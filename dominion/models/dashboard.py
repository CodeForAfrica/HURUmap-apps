import json
import logging

from django import forms
from django.conf import settings
from django.db import models
from django.contrib.postgres.fields import ArrayField
from django.utils.text import slugify
from fontawesome.fields import IconField
from fontawesome.forms import IconFormField
from hurumap.models import DataIndicator
from wazimap.models import Geography, DBTable, FieldTable, FieldTable
from meta.models import ModelMeta
from modelcluster.fields import ParentalKey
from modelcluster.models import ClusterableModel
from wagtail.admin.edit_handlers import (FieldPanel, InlinePanel,
                                         MultiFieldPanel, PageChooserPanel,
                                         StreamFieldPanel)
from wagtail.api import APIField
from wagtail.contrib.settings.models import BaseSetting, register_setting
from wagtail.core import blocks
from wagtail.core.fields import RichTextField, StreamField
from wagtail.core.models import Orderable, Page
from wagtail.core.templatetags import wagtailcore_tags
from wagtail.documents.models import Document
from wagtail.documents.blocks import DocumentChooserBlock
from wagtail.documents.edit_handlers import DocumentChooserPanel
from wagtail.contrib.settings.context_processors import settings as wagtail_settings
from wagtail.embeds.blocks import EmbedBlock
from wagtail.images import get_image_model
from wagtail.images.blocks import ImageChooserBlock
from wagtail.images.shortcuts import get_rendition_or_not_found
from wagtail.images.edit_handlers import ImageChooserPanel
from wagtail.images.templatetags import wagtailimages_tags
from wagtail.search import index
from wagtail.snippets.blocks import SnippetChooserBlock
from wagtail.snippets.models import register_snippet
from wazimap.models import Geography

from takwimu.models.data import ProfileData
from takwimu.models.utils.page import find_indicator_with_id_from_page, filter_rich_text
from takwimu.search import search
from takwimu.utils.helpers import (COUNTRIES,
                                   get_takwimu_stories, get_takwimu_faqs,
                                   get_takwimu_services, get_takwimu_profile_view_country_content,
                                   get_takwimu_profile_navigation, get_takwimu_profile_read_next)

logger = logging.getLogger(__name__)

@register_snippet
class Chart(models.Model):
    table = models.ForeignKey(DBTable, on_delete=models.CASCADE)
    chart_type = models.CharField(max_length=32, null=False)
    fields = ArrayField(models.CharField(max_length=150, null=False, unique=True), help_text="Comma-separated fields to be included in chart. Choose one field for one Column, Histogram or Pie. And Choose two fields for grouped column")
    section = models.ForeignKey(ChartSection, related_name='sections', null=True, on_delete=models.CASCADE)
    title = models.CharField(max_length=500, null=True, blank=True, help_text="Descriptive title of this chart")
    source = models.CharField(max_length=500, null=True, blank=True, help_text="Data source")
    source_link = models.URLField(max_length=500, null=True, blank=True, help_text="Link to data source")
    stat_type = models.CharField(max_length=32, null=True, blank=True, help_text="Default is Number")
    group_by = models.CharField(max_length=120, null=True, blank=True, help_text="You have choose grouped column chart, which field should the chart be grouped by?")

    panels = [
        FieldPanel('table'),
        FieldPanel('fields'),
        FieldPanel('chart_type'),
        FieldPanel('section'),
        FieldPanel('title'),
        FieldPanel('source'),
        FieldPanel('source_link'),
        FieldPanel('stat_type'),
    ]

    def __str__(self):
        return self.text

@register_snippet
class KeyContacts(ClusterableModel):
    name = models.CharField(default="Default", max_length=1024,
        help_text="If you're planning to maintain more than one list of contacts, then provide a unique name for this list")
    label = models.CharField(default="Key contacts", max_length=255,
                             help_text="Short title used in navigation, etc.")
    title = models.CharField(default="Key contacts", max_length=1024)

    panels = [
        FieldPanel('name'),
        FieldPanel('label'),
        FieldPanel('title'),
        InlinePanel('contacts', label='Contacts'),
    ]

    def __str__(self):
        return '{}'.format(self.name)

    class Meta:
        verbose_name = 'Contact Us | Key Contacts'
        verbose_name_plural = 'Contact Us | Key Contacts'


class KeyContact(Orderable):
    title = models.TextField()
    contact_details = models.TextField()
    link = models.TextField()
    parent = ParentalKey(KeyContacts, related_name='contacts')

    api_fields = [
        APIField('title'),
        APIField('contact_details'),
        APIField('link'),
    ]


class KeyContactsBlock(blocks.StreamBlock):
    key_contacts = SnippetChooserBlock(KeyContacts)

    # This block is only there to ensure structural integrity: Skip it in API
    def get_api_representation(self, value, context=None):
        representation = super(KeyContactsBlock, self).get_api_representation(value, context=context)
        if representation:
            block = representation[0]
            snippet = KeyContacts.objects.get(id=block['value'])
            block['value'] = {
                'label': snippet.label,
                'title': snippet.title,
                'contacts': [{ 'title': c.title, 'contact_details': c.contact_details, 'link': c.link } for c in snippet.contacts.all()],
            }
            return block
        return {}


@register_snippet
class SocialMedia(ClusterableModel):
    name = models.CharField(default="Default", max_length=1024,
        help_text="If you're planning to maintain more than one list of contacts, then provide a unique name for this list")
    label = models.CharField(default="Social", max_length=255,
                             help_text="Short title used in navigation, etc.")
    title = models.CharField(default="Social", max_length=1024)

    panels = [
        FieldPanel('name'),
        FieldPanel('label'),
        FieldPanel('title'),
        InlinePanel('accounts', label='Social Media Accounts', help_text='Social media accounts to show on Contact page'),
    ]

    def __str__(self):
        return '{}'.format(self.name)

    class Meta:
        verbose_name = 'Contact Us | Social Media'
        verbose_name_plural = 'Contact Us | Social Media'


SOCIAL_MEDIA = (
    ('facebook', 'Facebook'),
    ('github', 'GitHub'),
    ('instagram', 'Instagram'),
    ('linkedin', 'LinkedIn'),
    ('medium', 'Medium'),
    ('twitter', 'Twitter'),
    ('youtube', 'YouTube'),
)


class SocialMediaAccount(Orderable):
    name = models.CharField(max_length=255, choices=SOCIAL_MEDIA)
    parent = ParentalKey(SocialMedia, related_name='accounts')

    api_fields = [
        APIField('name'),
    ]

    def __str__(self):
        return self.name


class SocialMediaBlock(blocks.StreamBlock):
    social_media = SnippetChooserBlock(SocialMedia)

    # This block is only there to ensure structural integrity: Skip it in API
    def get_api_representation(self, value, context=None):
        representation = super(SocialMediaBlock, self).get_api_representation(value, context=context)
        if representation:
            block = representation[0]
            snippet = SocialMedia.objects.get(id=block['value'])
            block['value'] = {
                'label': snippet.label,
                'title': snippet.title,
                'accounts': [{ 'name': a.name } for a in snippet.accounts.all()],
            }
            return block
        return {}
