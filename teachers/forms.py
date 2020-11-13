from django import forms
from .models import Teacher

class TeacherForm(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput)

    class Meta:
        model = Teacher
        fields = ('name', 
                  'username', 
                  'description', 
                  'phone', 
                  'house_no',
                  'email',
                  'password',
                  'hire_date')
