from django.http import Http404
from django.shortcuts import render,redirect, get_object_or_404
from .models import ComponentesMECIP, Documentos_Ley, Anho, Documentos_ley_anuales, DocumentosMECIP, ElementosMECIP, Meses, Categoria, PrincipiosMECIP, ResolucionesMECIP, CircularMECIP, ActasMECIP,\
    CategoriaBlog, PostBlog, MarcoLegal, TiposDocumentos, CargoDirectivo, Directivos, ConsejoDirectivos
from django.contrib.auth.decorators import login_required, permission_required
from django.contrib import messages
from django.core.paginator import Paginator
from django.http import Http404
from .forms import DocumentosForm, AnhoForm, MesesForm, CategoriaForm,ResolucionesForm, CircularesForm, ActasForm
# Create your views here.
def index(request):
    categoria = CategoriaBlog.objects.all()
    documentos = PostBlog.objects.all()

    data= {
       'categoria': categoria,
       'documentos': documentos,  
     }
    print (documentos)
    return render(request,'paginas/index.html', data)

def nuestra_historia(request):
    return render(request,'paginas/nuestrahistoria.html')

def mision_vision(request):
    return render(request,'paginas/misionyvision.html')

def directivos(request):
    cargo = CargoDirectivo.objects.all()
    directivos = Directivos.objects.all()
    data={
        'cargo': cargo,
        'directivos': directivos
    }
    return render(request,'paginas/directivos.html', data)

def consejo_directivo(request):
    cargo = CargoDirectivo.objects.all()
    directivos = ConsejoDirectivos.objects.all()
    data={
        'cargo': cargo,
        'directivos': directivos
    }
    return render(request,'paginas/consejodirectivo.html',data)

def marco_legal(request):
    tipo = TiposDocumentos.objects.all()
    documentos = MarcoLegal.objects.all()
    data = {
        'tipo': tipo,
        'documentos': documentos
    }
    return render(request,'paginas/marcolegal.html',data)


#login
@login_required
def administrador(request):
    return render(request,'paginas/administrador/dashboard.html')

@permission_required('App.add_documentos_ley')
def agregar_documentos(request):
    data = {
        'form': DocumentosForm()
    }
    if request.method == 'POST':
        formulario = DocumentosForm(data=request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Guardado Correctamente")
            return redirect('listar_documentos')
        else:
            data["form"] = formulario
    return render(request, 'paginas/administrador/ley5189/agregar.html',data)

@permission_required('App.view_documentos_ley')
def listar_documentos(request):
    documentos = Documentos_Ley.objects.all()
    page = request.GET.get('page',1)

    try:
        paginator = Paginator(documentos, 18)
        documentos = paginator.page(page)
    except:
        raise Http404
    data ={
        'documentos': documentos,
        'paginator' : paginator
    }
    return render(request, 'paginas/administrador/ley5189/listar.html',data)

@permission_required('App.change.documentos_ley')
def modificar_documentos(request, id):
    documentos = get_object_or_404(Documentos_Ley, id=id)
    data={
        'form': DocumentosForm(instance=documentos)
    }
    if request.method == 'POST':
        formulario = DocumentosForm(data=request.POST, instance= documentos,files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Modificado Correctamente")
            return redirect('listar_documentos')
        data["form"] = formulario
    return render(request, 'paginas/administrador/ley5189/modificar.html',data)

@permission_required('App.delete.documentos_ley')
def eliminar_documentos(request):
    documentos = get_object_or_404(Documentos_Ley, id=id)
    documentos.delete()
    messages.success(request, "eliminado Correctamente")
    return redirect('listar_documentos')

#Anhos
@permission_required('App.add_anho')
def agregar_anhos(request):
    data = {
        'form': AnhoForm()
    }
    if request.method == 'POST':
        formulario = AnhoForm(data=request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Guardado Correctamente")
            return redirect('listar_anhos')
        else:
            data["form"] = formulario
    return render(request, 'paginas/administrador/ley5189/agregar_anhos.html',data)

@permission_required('App.view_anho')
def listar_anhos(request):
    documentos = Anho.objects.all()
    page = request.GET.get('page',1)

    try:
        paginator = Paginator(documentos, 18)
        documentos = paginator.page(page)
    except:
        raise Http404
    data ={
        'documentos': documentos,
        'paginator' : paginator
    }
    return render(request, 'paginas/administrador/ley5189/listar_anhos.html',data)

@permission_required('App.change.anho')
def modificar_anhos(request, id):
    documentos = get_object_or_404(Anho, id=id)
    data={
        'form': AnhoForm(instance=documentos)
    }
    if request.method == 'POST':
        formulario = AnhoForm(data=request.POST, instance= documentos)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Modificado Correctamente")
            return redirect('listar_anhos')
        data["form"] = formulario
    return render(request, 'paginas/administrador/ley5189/modificar_anhos.html',data)

@permission_required('App.delete.anho')
def eliminar_anhos(request):
    documentos = get_object_or_404(Anho, id=id)
    documentos.delete()
    messages.success(request, "eliminado Correctamente")
    return redirect('listar_anhos')

#meses
@permission_required('App.add_meses')
def agregar_meses(request):
    data = {
        'form': MesesForm()
    }
    if request.method == 'POST':
        formulario = MesesForm(data=request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Guardado Correctamente")
            return redirect('listar_meses')
        else:
            data["form"] = formulario
    return render(request, 'paginas/administrador/ley5189/agregar_meses.html',data)

@permission_required('App.view_meses')
def listar_meses(request):
    documentos = Meses.objects.all()
    page = request.GET.get('page',1)

    try:
        paginator = Paginator(documentos, 18)
        documentos = paginator.page(page)
    except:
        raise Http404
    data ={
        'documentos': documentos,
        'paginator' : paginator
    }
    return render(request, 'paginas/administrador/ley5189/listar_meses.html',data)

@permission_required('App.change.meses')
def modificar_meses(request, id):
    documentos = get_object_or_404(Meses, id=id)
    data={
        'form': MesesForm(instance=documentos)
    }
    if request.method == 'POST':
        formulario = MesesForm(data=request.POST, instance= documentos)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Modificado Correctamente")
            return redirect('listar_meses')
        data["form"] = formulario
    return render(request, 'paginas/administrador/ley5189/modificar_meses.html',data)

@permission_required('App.delete.meses')
def eliminar_meses(request):
    documentos = get_object_or_404(Meses, id=id)
    documentos.delete()
    messages.success(request, "eliminado Correctamente")
    return redirect('listar_meses')

#Categoria
@permission_required('App.add_categoria')
def agregar_categorias(request):
    data = {
        'form': CategoriaForm()
    }
    if request.method == 'POST':
        formulario = CategoriaForm(data=request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Guardado Correctamente")
            return redirect('listar_categoria')
        else:
            data["form"] = formulario
    return render(request, 'paginas/administrador/ley5189/agregar_categoria.html',data)

@permission_required('App.view_categoria')
def listar_categorias(request):
    documentos = Categoria.objects.all()
    page = request.GET.get('page',1)

    try:
        paginator = Paginator(documentos, 18)
        documentos = paginator.page(page)
    except:
        raise Http404
    data ={
        'documentos': documentos,
        'paginator' : paginator
    }
    return render(request, 'paginas/administrador/ley5189/listar_categoria.html',data)

@permission_required('App.change.categoria')
def modificar_categorias(request, id):
    documentos = get_object_or_404(Categoria, id=id)
    data={
        'form': CategoriaForm(instance=documentos)
    }
    if request.method == 'POST':
        formulario = CategoriaForm(data=request.POST, instance= documentos)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Modificado Correctamente")
            return redirect('listar_categoria')
        data["form"] = formulario
    return render(request, 'paginas/administrador/ley5189/modificar_categoria.html',data)

@permission_required('App.delete.meses')
def eliminar_categorias(request):
    documentos = get_object_or_404(Categoria, id=id)
    documentos.delete()
    messages.success(request, "eliminado Correctamente")
    return redirect('listar_categoria')


#MECIP
#resoluciones
@permission_required('App.view_resoluciones_MECIP')
def listar_resoluciones(request):
    documentos = ResolucionesMECIP.objects.all()
    page = request.GET.get('page',1)

    try:
        paginator = Paginator(documentos, 18)
        documentos = paginator.page(page)
    except:
        raise Http404
    data ={
        'documentos': documentos,
        'paginator' : paginator
        }
    return render(request, 'paginas/administrador/MECIP/listar_resoluciones.html',data)

@permission_required('App.add_resoluciones_MECIP')
def agregar_resoluciones(request):
    data = {
        'form': ResolucionesForm()
    }
    if request.method == 'POST':
        formulario = ResolucionesForm(data=request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Guardado Correctamente")
            return redirect('listar_resoluciones')
        else:
            data["form"] = formulario
    return render(request, 'paginas/administrador/MECIP/agregar_resoluciones.html',data)

@permission_required('App.change.resoluciones_MECIP')
def modificar_resoluciones(request, id):
    documentos = get_object_or_404(ResolucionesMECIP, id=id)
    data={
        'form': ResolucionesForm(instance=documentos)
    }
    if request.method == 'POST':
        formulario = ResolucionesForm(data=request.POST, instance= documentos)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Modificado Correctamente")
            return redirect('listar_resoluciones')
        data["form"] = formulario
    return render(request, 'paginas/administrador/MECIP/modificar_resoluciones.html',data)

@permission_required('App.delete.circular_MECIP')
def eliminar_resoluciones(request):
    documentos = get_object_or_404(ResolucionesMECIP, id=id)
    documentos.delete()
    messages.success(request, "eliminado Correctamente")
    return redirect('listar_resoluciones')

#Circulares
@permission_required('App.view_circular_MECIP')
def listar_circulares(request):
    documentos = CircularMECIP.objects.all()
    page = request.GET.get('page',1)

    try:
        paginator = Paginator(documentos, 18)
        documentos = paginator.page(page)
    except:
        raise Http404
    data ={
        'documentos': documentos,
        'paginator' : paginator
        }
    return render(request, 'paginas/administrador/MECIP/listar_circulares.html',data)

@permission_required('App.add_circular_MECIP')
def agregar_circulares(request):
    data = {
        'form': CircularesForm()
    }
    if request.method == 'POST':
        formulario = CircularesForm(data=request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Guardado Correctamente")
            return redirect('listar_circulares')
        else:
            data["form"] = formulario
    return render(request, 'paginas/administrador/MECIP/agregar_ciruclares.html',data)

@permission_required('App.change.circulares_MECIP')
def modificar_circulares(request, id):
    documentos = get_object_or_404(CircularMECIP, id=id)
    data={
        'form': CircularesForm(instance=documentos)
    }
    if request.method == 'POST':
        formulario = CircularesForm(data=request.POST, instance= documentos)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Modificado Correctamente")
            return redirect('listar_circulares')
        data["form"] = formulario
    return render(request, 'paginas/administrador/MECIP/modificar_circulares.html',data)

@permission_required('App.delete.circular_MECIP')
def eliminar_circulares(request):
    documentos = get_object_or_404(CircularMECIP, id=id)
    documentos.delete()
    messages.success(request, "eliminado Correctamente")
    return redirect('listar_circulares')

#Actas
@permission_required('App.view_actas_MECIP')
def listar_actas(request):
    documentos = ActasMECIP.objects.all()
    page = request.GET.get('page',1)

    try:
        paginator = Paginator(documentos, 18)
        documentos = paginator.page(page)
    except:
        raise Http404
    data ={
        'documentos': documentos,
        'paginator' : paginator
        }
    return render(request, 'paginas/administrador/MECIP/listar_actas.html',data)

@permission_required('App.add_actas_MECIP')
def agregar_actas(request):
    data = {
        'form': ActasForm()
    }
    if request.method == 'POST':
        formulario = ActasForm(data=request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Guardado Correctamente")
            return redirect('listar_actas')
        else:
            data["form"] = formulario
    return render(request, 'paginas/administrador/MECIP/agregar_actas.html',data)

@permission_required('App.change.actas_MECIP')
def modificar_actas(request, id):
    documentos = get_object_or_404(ActasMECIP, id=id)
    data={
        'form': ActasForm(instance=documentos)
    }
    if request.method == 'POST':
        formulario = ActasForm(data=request.POST, instance= documentos)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Modificado Correctamente")
            return redirect('listar_actas')
        data["form"] = formulario
    return render(request, 'paginas/administrador/MECIP/modificar_actas.html',data)

@permission_required('App.delete.actas_MECIP')
def eliminar_actas(request):
    documentos = get_object_or_404(ActasMECIP, id=id)
    documentos.delete()
    messages.success(request, "eliminado Correctamente")
    return redirect('listar_actas')


# paginas html
def ley5189(request):
    documentos = Documentos_Ley.objects.all()
    meses = Meses.objects.all()
    anho = Anho.objects.all()
    anuales = Documentos_ley_anuales.objects.all()
    data= {
       'documentos': documentos,
       'meses': meses,
       'anho': anho,
       'anuales': anuales
     }
    return render(request, 'paginas/ley5189/ley-5189-2014.html',data)

def mecip(request):
    componentes = ComponentesMECIP.objects.all()
    principios = PrincipiosMECIP.objects.all()
    elementos = ElementosMECIP.objects.all()
    documentos = DocumentosMECIP.objects.all()
    data = {

        'componentes': componentes,
        'principios': principios,
        'elementos': elementos,
        'documentos': documentos,
    }
    return render(request, 'paginas/mecip/mecip.html', data)

#noticias
def noticias(request):
    categoria = CategoriaBlog.objects.all()
    documentos = PostBlog.objects.all()
    page = request.GET.get('page',1)

    try:
        paginator = Paginator(documentos, 10)
        documentos = paginator.page(page)
    except:
        raise Http404
    data= {
       'categoria': categoria,
       'documentos': documentos,  
       'paginator' : paginator   
     }
    return render(request,'paginas/noticias.html', data)

def noticias_detalles(request, slug):
    documentos = get_object_or_404(PostBlog, slug=slug)
    data={
        'documentos': documentos
    }
    return render(request, 'paginas/noticiasdetalles.html', data)