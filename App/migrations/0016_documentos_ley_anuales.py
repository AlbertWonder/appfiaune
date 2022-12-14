# Generated by Django 4.0.6 on 2022-07-27 23:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('App', '0015_elementosmecip_principios_id'),
    ]

    operations = [
        migrations.CreateModel(
            name='Documentos_ley_anuales',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=200)),
                ('descripcion', models.TextField()),
                ('archivo', models.FileField(null=True, upload_to='documentos/transparencia/anuales', verbose_name='Archivo')),
                ('anho_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='App.anho', verbose_name='Año')),
            ],
        ),
    ]
