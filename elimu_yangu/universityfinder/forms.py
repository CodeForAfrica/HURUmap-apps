from django import forms


class InputForm(forms.Form):
    subjects = forms.CharField( help_text = "History-E, Geography-C, General Studies-S", required=False )
    diplomas = forms.CharField( help_text = "eg. Diploma in Medicine-3.8", required=False )
    olevel_subjects = forms.CharField( help_text = "eg. History-E, Geography-C" )
