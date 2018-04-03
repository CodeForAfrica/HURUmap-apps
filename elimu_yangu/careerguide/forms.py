from django import forms

Gender_Options = [('F', 'young lady'), ('M', 'young man'),]
Region_Options = [('ARUSHA','Arusha'),('DAR ES SALAAM', 'Dar es Salaam'),('DODOMA','Dodoma'),
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
Career_Options = [('Doctor', 'a doctor'), ('Pilot', 'a pilot'), ('Engineer', 'an engineer')]
Education_Level_Options = [('1', 'ordinary level'), ('2', 'primary level')]


class InputForm(forms.Form):
    gender = forms.CharField(label='gender', widget=forms.Select(choices=Gender_Options, attrs={'class': 'inline-select'}), required=False)
    region = forms.CharField(label='region', widget=forms.Select(choices=Region_Options, attrs={'class': 'inline-select'}), required=False)
    career = forms.CharField(label='career', widget=forms.Select(choices=Career_Options, attrs={'class': 'inline-select'}), required=True)
    education_level = forms.CharField(label='education level', widget=forms.Select(choices=Education_Level_Options, attrs={'class': 'inline-select'}), required=False)
