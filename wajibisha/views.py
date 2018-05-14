from django.views.generic.base import TemplateView


class ArticlesView(TemplateView):
    template_name = 'articles.html'


class AboutView(TemplateView):
    template_name = 'about.html'
