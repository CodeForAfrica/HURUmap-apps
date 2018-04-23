from django import forms
from django.utils.translation import ugettext_lazy as _

Gender_Options = [('gender',_('select gender')),('F', _('young lady')), ('M', _('young man')),]
Region_Options = [('region',_('select region')),('ARUSHA','Arusha'),('DAR ES SALAAM', 'Dar es Salaam'),('DODOMA','Dodoma'),
('GEITA','Geita'),
('IRINGA','Iringa'),
('KAGERA','Kagera'),
('KASKAZINI PEMBA','Kaskazini Pemba'),
('KASKAZINI UNGUJA','Kaskazini Unguja'),
('KATAVI','Katavi'),
('KIGOMA','Kigoma'),
('KILIMANJARO','Kilimanjaro'),
('KUSINI PEMBA','Kusini Pemba'),
('KUSINI UNGUJA','Kusini Unguja'),
('LINDI','Lindi'),
('MARA','Mara'),
('MANYARA','Manyara'),
('MBEYA','Mbeya'),
('MJINI MAGHARIBI','Mjini Magharibi'),
('MOROGORO','Morogoro'),
('MTWARA','Mtwara'),
('MWANZA','Mwanza'),
('NJOMBE','Njombe'),
('PWANI','Pwani'),
('RUKWA','Rukwa'),
('RUVUMA','Ruvuma'),
('SHINYANGA','Shinyanga'),
('SIMIYU','Simiyu'),
('SINGINDA','Singida'),
('SONGWE','Songwe'),
('TABORA','Tabora'),
('TANGA','Tanga'),]
Career_Options = [('career', _('choose a career')),('Doctor', _('a doctor')), ('Pilot', _('a pilot')), ('Engineer', _('an engineer'))]
Education_Level_Options = [('level',_('choose study level')),('1', _('ordinary level')), ('2', _('primary level'))]


class InputForm(forms.Form):
    gender = forms.CharField(label='gender', widget=forms.Select(choices=Gender_Options, attrs={'class': 'inline-select'}), required=False)
    region = forms.CharField(label='region', widget=forms.Select(choices=Region_Options, attrs={'class': 'inline-select'}), required=False)
    career = forms.CharField(label='career', widget=forms.Select(choices=Career_Options, attrs={'class': 'inline-select'}), required=True)
    education_level = forms.CharField(label='education level', widget=forms.Select(choices=Education_Level_Options, attrs={'class': 'inline-select'}), required=False)
