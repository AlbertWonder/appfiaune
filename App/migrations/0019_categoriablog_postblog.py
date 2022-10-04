# Generated by Django 4.0.6 on 2022-08-07 13:09

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('App', '0018_alter_documentosmecip_elementos_id'),
    ]

    operations = [
        migrations.CreateModel(
            name='CategoriaBlog',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='PostBlog',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo', models.CharField(max_length=255)),
                ('extracto', models.TextField()),
                ('contenido', models.TextField()),
                ('slug', models.SlugField(max_length=250, unique=True, unique_for_date='publicado')),
                ('publicado', models.DateTimeField(default=django.utils.timezone.now)),
                ('status', models.CharField(choices=[('draft', 'Draft'), ('publicado', 'Publicado')], default='draft', max_length=10)),
                ('autor', models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to=settings.AUTH_USER_MODEL, verbose_name='Blog_posts')),
                ('categoria_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='App.categoriablog', verbose_name='Categoria')),
            ],
            options={
                'ordering': ('-publicado',),
            },
        ),
    ]