from dataclasses import fields
from django import forms
from .models import Documentos_Ley, Anho, Meses, Categoria, ResolucionesMECIP,CircularMECIP , ActasMECIP

class DocumentosForm(forms.ModelForm):
    class Meta:
        model= Documentos_Ley
        fields = '__all__'


class AnhoForm(forms.ModelForm):
    class Meta:
        model= Anho
        fields = '__all__'

class MesesForm(forms.ModelForm):
    class Meta:
        model= Meses
        fields = '__all__'


class CategoriaForm(forms.ModelForm):
    class Meta:
        model= Categoria
        fields = '__all__'

class ResolucionesForm(forms.ModelForm):
    class Meta:
        model = ResolucionesMECIP
        fields = 'resolucion', 'anho','descripcion', 'archivo'

class CircularesForm(forms.ModelForm):
    class Meta:
        model = CircularMECIP
        fields = 'circular', 'anho','descripcion', 'archivo'

class ActasForm(forms.ModelForm):
    class Meta:
        model = ActasMECIP
        fields = 'acta', 'anho','descripcion', 'archivo'