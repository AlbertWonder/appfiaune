from django.contrib import admin
from .models import Anho, ComponentesMECIP, Documentos_ley_anuales, ElementosMECIP, Meses, Categoria, Documentos_Ley, PrincipiosMECIP,\
     ResolucionesMECIP, CircularMECIP, ActasMECIP, DocumentosMECIP,CategoriaBlog,PostBlog, TiposDocumentos, MarcoLegal, CargoDirectivo, Directivos,ConsejoDirectivos
# Register your models here.
admin.site.register(Anho)
admin.site.register(Meses)
admin.site.register(Categoria)
admin.site.register(Documentos_Ley)
admin.site.register(Documentos_ley_anuales)
admin.site.register(ResolucionesMECIP)
admin.site.register(CircularMECIP)
admin.site.register(ActasMECIP)
admin.site.register(ElementosMECIP)
admin.site.register(PrincipiosMECIP)
admin.site.register(ComponentesMECIP)
admin.site.register(DocumentosMECIP)
admin.site.register(CategoriaBlog)

@admin.register(PostBlog)
class AuthorAdmin(admin.ModelAdmin):
     list_display = ('titulo','id', 'status', 'slug', 'autor')
     prepopulated_fields = {'slug': ('titulo',),}


admin.site.register(TiposDocumentos)
admin.site.register(MarcoLegal)
admin.site.register(CargoDirectivo)
admin.site.register(Directivos)
admin.site.register(ConsejoDirectivos)


