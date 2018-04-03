from django import forms

Grade_Options = [('A', 'A'), ('B', 'B'), ('C', 'C'), ('D', 'D'), ('E', 'E'), ('F', 'F'), ('S', 'S')]
Subject_Options = [('Accountacy','Accountancy'),('Advance Mathematics', 'Advance Mathematics'),('Agriculture','Agriculture'), ('Arabic Language','Arabic Language'),
('Biology', 'Biology'), ('Chemistry', 'Chemistry'), ('Commerce', 'Commerce'),('Computer Science', 'Computer Science'), ('Economics','Economics'), ('English Language','English Language'),
('French Language', 'French Language'), ('Food and Human Nutrition','Food & Human Nutrition'), ('Geography','Geography'), ('History','History'), ('Kiswahili','Kiswahili'),('Physics','Physics'),]
class InputForm(forms.Form):
    gender = forms.CharField(label='gender', widget=forms.Select(choices=Grade_Options, attrs={'class': 'form-control'}), required=False)
    subjects = forms.CharField(label='gender', widget=forms.Select(choices=Subject_Options, attrs={'class': 'form-control'}), required=False)
    diplomas = forms.CharField( help_text = "eg. Diploma in Medicine-3.8", required=False )
    olevel_subjects = forms.CharField( help_text = "eg. History-E, Geography-C" )
