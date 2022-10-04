from django.db import models
from django.contrib.auth.models import User
from ckeditor.fields import RichTextField
from django.utils import timezone

# Create your models here.
#ley 5189/2014
class Anho(models.Model):
    nombre = models.CharField(max_length=10)

    def __str__(self):
        fila=  self.nombre 
        return fila

class Meses(models.Model):
    nombre = models.CharField(max_length=10)

    def __str__(self):
        fila= self.nombre 
        return fila

class Categoria(models.Model):
    nombre = models.CharField(max_length=200)
    descripcion = models.TextField()

    def __str__(self):
        fila= self.nombre 
        return fila

class Documentos_Ley(models.Model):
    anho_id = models.ForeignKey(Anho,on_delete=models.PROTECT, null=True, verbose_name= 'Año' )
    mes_id = models.ForeignKey(Meses, on_delete=models.PROTECT, null=True, verbose_name= 'Mes')
    categoria = models.ForeignKey(Categoria, on_delete=models.PROTECT,null=True, verbose_name= 'Categoria')
    archivo = models.FileField(upload_to='documentos/transparencia/',verbose_name="Archivo",null=True)


    def __str__(self):
        texto = "({0}) ({1}) ({2}) {3}"
        return texto.format(self.anho_id, self.mes_id,self.categoria,self.archivo )
    
class Documentos_ley_anuales(models.Model):
    nombre = models.CharField(max_length=200)
    descripcion = models.TextField()
    anho_id = models.ForeignKey(Anho,on_delete=models.PROTECT, null=True, verbose_name= 'Año' )
    archivo = models.FileField(upload_to='documentos/transparencia/anuales',verbose_name="Archivo",null=True)

    def __str__(self):
        texto = "({0}) ({1}) ({2}) {3}"
        return texto.format(self.nombre, self.descripcion,self.anho_id,self.archivo )

#MECIP
class ResolucionesMECIP(models.Model):
    resolucion = models.CharField(max_length=200, null=True, verbose_name="Resolucion")
    descripcion = models.TextField()
    anho = models.ForeignKey(Anho,on_delete=models.PROTECT, null=True, verbose_name= 'Año' )
    archivo = models.FileField(upload_to='documentos/MECIP/resoluciones/',verbose_name="Archivo",null=True)
    status =models.BooleanField(null=True)

class ActasMECIP(models.Model):
    acta = models.CharField(max_length=100, null=True, verbose_name="Acta")
    anho = models.ForeignKey(Anho,on_delete=models.PROTECT, null=True, verbose_name= 'Año' )
    descripcion = models.TextField()
    archivo = models.FileField(upload_to='documentos/MECIP/actas/',verbose_name="Archivo",null=True)
    status =models.BooleanField()

class CircularMECIP(models.Model):
    circular = models.CharField(max_length=100, null=True, verbose_name="Circular")
    descripcion = models.TextField()
    anho = models.ForeignKey(Anho,on_delete=models.PROTECT, null=True, verbose_name= 'Año' )
    archivo = models.FileField(upload_to='documentos/MECIP/circulares/',verbose_name="Archivo",null=True)
    status =models.BooleanField()


class ComponentesMECIP(models.Model):
    nombre = models.CharField(max_length=100)
  

    def __str__(self):
        fila=  self.nombre 
        return fila
    
class PrincipiosMECIP(models.Model):
    nombre = models.CharField(max_length=200)
    componentes_id = models.ForeignKey(ComponentesMECIP,on_delete=models.PROTECT, null=True, verbose_name= 'Componentes' )
    def __str__(self):
        fila=  self.nombre 
        return fila


class ElementosMECIP(models.Model):
    nombre = models.CharField(max_length=200)
    principios_id = models.ForeignKey(PrincipiosMECIP,on_delete=models.PROTECT, null=True, verbose_name= 'Principios' )
    def __str__(self):
        fila=  self.nombre 
        return fila

class DocumentosMECIP(models.Model):
    nombre = models.CharField(max_length=200)
    descripcion = models.TextField()
    anho = models.ForeignKey(Anho,on_delete=models.PROTECT, null=True, verbose_name= 'Año' )
    compomentes_id = models.ForeignKey(ComponentesMECIP,on_delete=models.PROTECT, null=True, verbose_name= 'Componentes' )
    principios_id = models.ForeignKey(PrincipiosMECIP,on_delete=models.PROTECT, null=True, blank=True, verbose_name= 'Principios' )
    elementos_id = models.ForeignKey(ElementosMECIP,on_delete=models.PROTECT, null=True, blank=True, verbose_name= 'Elementos' )
    archivo = models.FileField(upload_to='documentos/MECIP/modelos/',verbose_name="Archivo",null=True)
    status =models.BooleanField()


#blog
class CategoriaBlog(models.Model):
    nombre = models.CharField(max_length=100)

    def __str__(self):
        fila=  self.nombre 
        return fila

class PostBlog(models.Model):

    class PostObjects(models.Manager):
        def get_queryset(self): 
            return super().get_queryset() .filter(status='publicado')

    options = (
        ('draft', 'Draft'),
        ('publicado', 'Publicado'),
        ('destacado', 'Destacado'),
    )

    titulo = models.CharField(max_length=255)
    extracto = models.TextField()
    categoria_id = models.ForeignKey(CategoriaBlog,on_delete=models.PROTECT, null=True, verbose_name= 'Categoria' )
    slug = models.SlugField(max_length=250, unique_for_date= 'publicado', null = False, unique = True)
    imagen = models.FileField(upload_to='documentos/noticias/',verbose_name="Imagen",null=True)
    contenido = RichTextField()
    publicado = models.DateTimeField(default=timezone.now)
    publicado_fin = models.DateTimeField(default=timezone.now)
    autor = models.ForeignKey(User,on_delete=models.PROTECT, null=True, verbose_name= 'Blog_posts' )
    status = models.CharField(max_length=10, choices=options, default='draft')
    objects = models.Manager()
    postobjects = PostObjects() #manager personalizado

    class Meta:
        ordering = ('-publicado',)

    def __str__(self):
        fila=  self.titulo 
        return fila
    
#marco legal
class TiposDocumentos(models.Model):
    nombre = models.CharField(max_length=100)

    def __str__(self):
        fila=  self.nombre 
        return fila

class MarcoLegal(models.Model):
    nombre = models.CharField(max_length=200)
    tipo_id = models.ForeignKey(TiposDocumentos,on_delete=models.PROTECT, null=True, verbose_name= 'Tipo de Dcoumento' )
    archivo = models.FileField(upload_to='documentos/MarcoLegal/',verbose_name="Archivo",null=True)
    status =models.BooleanField()
    
    def __str__(self):
        fila=  self.nombre 
        return fila

#directivos
class CargoDirectivo(models.Model):
    nombre = models.CharField(max_length=100)

    def __str__(self):
        fila=  self.nombre 
        return fila

class Directivos(models.Model):
    nombre = models.CharField(max_length=100)
    apellido = models.CharField(max_length=100)
    cargo_id = models.ForeignKey(CargoDirectivo,on_delete=models.PROTECT, null=True, verbose_name= 'Cargo' )
    correo = models.EmailField(blank=True)
    telefono = models.CharField(max_length=15, blank=True)
    imagen = models.FileField(upload_to='documentos/Directivos/',verbose_name="Directivos",null=True)

    def __str__(self):
        fila=  self.nombre 
        return fila

class ConsejoDirectivos(models.Model):
    nombre = models.CharField(max_length=100)
    apellido = models.CharField(max_length=100)
    cargo_id = models.ForeignKey(CargoDirectivo,on_delete=models.PROTECT, null=True, verbose_name= 'Cargo' )
    correo = models.EmailField(blank=True)
    telefono = models.CharField(max_length=15, blank=True)
    imagen = models.FileField(upload_to='documentos/Directivos/',verbose_name="Directivos",null=True)

    def __str__(self):
        fila=  self.nombre 
        return fila