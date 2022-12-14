# Generated by Django 4.0.6 on 2022-08-09 23:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('App', '0026_alter_directivos_telefono'),
    ]

    operations = [
        migrations.CreateModel(
            name='ConsejoDirectivos',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=100)),
                ('apellido', models.CharField(max_length=100)),
                ('correo', models.EmailField(blank=True, max_length=254)),
                ('telefono', models.CharField(blank=True, max_length=15)),
                ('imagen', models.FileField(null=True, upload_to='documentos/Directivos/', verbose_name='Directivos')),
                ('cargo_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='App.cargodirectivo', verbose_name='Cargo')),
            ],
        ),
    ]
