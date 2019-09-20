from django import forms

class TransferForm(forms.Form):

    url = forms.CharField(widget=forms.TextInput(attrs={'class':'form-control','id':'url','placeholder':'http:// or https://'}))
    #
    # username = forms.CharField(widget=forms.TextInput(attrs={'class':'form-control','id':'username'}))
    #
    # password = forms.CharField(widget=forms.PasswordInput(attrs={'class':'form-control','id':'password'}))

    class Meta:
        fields = ['url']