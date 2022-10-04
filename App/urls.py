from django.urls import path
from .views import index, administrador, agregar_actas, agregar_anhos, agregar_categorias, agregar_documentos, eliminar_actas, listar_actas, listar_documentos, modificar_actas, modificar_circulares, modificar_documentos,eliminar_documentos,\
agregar_anhos, listar_anhos, modificar_anhos, eliminar_anhos,agregar_meses, listar_meses, modificar_meses, eliminar_meses,\
agregar_categorias, listar_categorias, modificar_categorias, eliminar_categorias,listar_resoluciones,agregar_resoluciones,\
modificar_resoluciones, eliminar_resoluciones, listar_circulares, agregar_circulares, eliminar_circulares, ley5189, mecip,\
nuestra_historia, mision_vision, directivos, consejo_directivo, marco_legal, noticias, noticias_detalles



urlpatterns = [
    #inicio
    path('', index, name='index'),
    path('index/',index, name='index'),

    path('administrador/', administrador, name='administrador'),
    path('administrador/agregar-documentos/', agregar_documentos, name ='agregar_documentos'),
    path('administrador/listar-documentos/', listar_documentos, name ='listar_documentos'),
    path('administrador/modificar-documentos/<id>/', modificar_documentos, name ='modificar_documentos'),
    path('administrador/eliminar-documentos/<id>/', eliminar_documentos, name ='eliminar_documentos'),
    #anhos
    path('administrador/agregar-anhos/', agregar_anhos, name ='agregar_anhos'),
    path('administrador/listar-anhos/', listar_anhos, name ='listar_anhos'),
    path('administrador/modificar-anhos/<id>/', modificar_anhos, name ='modificar_anhos'),
    path('administrador/eliminar-anhos/<id>/', eliminar_anhos, name ='eliminar_anhos'),
    #meses
    path('administrador/agregar-meses/', agregar_meses, name ='agregar_meses'),
    path('administrador/listar-meses/', listar_meses, name ='listar_meses'),
    path('administrador/modificar-meses/<id>/', modificar_meses, name ='modificar_meses'),
    path('administrador/eliminar-meses/<id>/', eliminar_meses, name ='eliminar_meses'),
    #categoria
    path('administrador/agregar-categoria/', agregar_categorias, name ='agregar_categoria'),
    path('administrador/listar-categoria/', listar_categorias, name ='listar_categoria'),
    path('administrador/modificar-categoria/<id>/', modificar_categorias, name ='modificar_categoria'),
    path('administrador/eliminar-categoria/<id>/', eliminar_categorias, name ='eliminar_categoria'),
    # MECIP
    #Resoluciounes
    path('administrador/agregar-resoluciones/', agregar_resoluciones, name ='agregar_resoluciones'),
    path('administrador/listar-resoluciones/', listar_resoluciones, name ='listar_resoluciones'),
    path('administrador/modificar-resoluciones/<id>/', modificar_resoluciones, name ='modificar_resoluciones'),
    path('administrador/eliminar-resoluciones/<id>/', eliminar_resoluciones, name ='eliminar_resoluciones'),
    #ciruclares
    path('administrador/agregar-circulares/', agregar_circulares, name ='agregar_circulares'),
    path('administrador/listar-circulares/', listar_circulares, name ='listar_circulares'),
    path('administrador/modificar-circulares/<id>/', modificar_circulares, name ='modificar_circulares'),
    path('administrador/eliminar-circulares/<id>/', eliminar_circulares, name ='eliminar_circulares'),
#actas
    path('administrador/agregar-actas/', agregar_actas, name ='agregar_actas'),
    path('administrador/listar-actas/', listar_actas, name ='listar_actas'),
    path('administrador/modificar-actas/<id>/', modificar_actas, name ='modificar_actas'),
    path('administrador/eliminar-actas/<id>/', eliminar_actas, name ='eliminar_actas'),

#paginas html
    path('ley-5189-2014/',ley5189, name='ley_5189_2014'),
    path('mecip/',mecip, name='mecip'),
    path('nuestra-historia/',nuestra_historia, name='nuestra_historia'),
    path('mision-y-vision/',mision_vision, name='mision_y_vision'),
    path('directivos/',directivos, name='directivos'),
    path('consejo-directivo/',consejo_directivo, name='consejo_directivo'),
    path('marco-legal/',marco_legal, name='marco_legal'),
    path('noticias/',noticias, name='noticias'),
    path('noticias_detalles/<slug>/',noticias_detalles, name='noticias_detalles'),
    ]