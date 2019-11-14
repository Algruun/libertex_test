from django import forms

from core.models import Branch


class UploadFileForm(forms.ModelForm):
    class Meta:
        model = Branch
        fields = "__all__"
