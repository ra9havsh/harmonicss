from django import forms
from django.conf import settings

class TransferForm(forms.Form):
    DATABASE_TYPE_CHOICE = [
        ('0', 'Please Choose Database')
    ]

    INPUT_TYPE_CHOICE={
        ('1','Local File'),
        ('0','Url')
    }
    for no,database in enumerate(settings.DATABASES):
        DATABASE_TYPE_CHOICE.append((database,settings.DATABASES[database]['NAME']))

    path = forms.ChoiceField(widget=forms.RadioSelect,choices=INPUT_TYPE_CHOICE,initial='0')
    url = forms.CharField(widget=forms.TextInput(attrs={'class':'form-control','id':'url','placeholder':'http:// or https://'}),required=False)
    file = forms.FileField(widget=forms.FileInput(attrs={'class':'form-control','id':'file'}),required=False)
    database = forms.ChoiceField(widget=forms.Select(attrs={'class':'form-control','id':'database'}),choices=DATABASE_TYPE_CHOICE,initial='0')
    username = forms.CharField(widget=forms.TextInput(attrs={'class':'form-control','id':'username'}))
    password = forms.CharField(widget=forms.PasswordInput(attrs={'class':'form-control','id':'password'}),required=False)

    class Meta:
        fields = ['url','file','database','username','password']