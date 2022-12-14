# Generated by Django 4.0.6 on 2022-07-11 17:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('App', '0005_alter_anho_nombre_alter_meses_nombre'),
    ]

    operations = [
        migrations.RenameField(
            model_name='documentos_ley',
            old_name='categoria_id',
            new_name='categoria',
        ),
        migrations.AlterField(
            model_name='documentos_ley',
            name='archivo',
            field=models.FileField(null=True, upload_to='documentos/transparencia/', verbose_name='Archivo'),
        ),
        migrations.CreateModel(
            name='ResolucionesMECIP',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('resolucion', models.CharField(max_length=200, null=True, verbose_name='Resolucion')),
                ('descripcion', models.TextField()),
                ('archivo', models.FileField(null=True, upload_to='documentos/MECIP/resoluciones/', verbose_name='Archivo')),
                ('status', models.BooleanField()),
                ('anho_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='App.anho', verbose_name='Año')),
            ],
        ),
        migrations.CreateModel(
            name='CircularMECIP',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('circular', models.CharField(max_length=100, null=True, verbose_name='Acta')),
                ('descripcion', models.TextField()),
                ('archivo', models.FileField(null=True, upload_to='documentos/MECIP/circulares/', verbose_name='Archivo')),
                ('status', models.BooleanField()),
                ('anho', models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='App.anho', verbose_name='Año')),
            ],
        ),
        migrations.CreateModel(
            name='ActasMECIP',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('acta', models.CharField(max_length=100, null=True, verbose_name='Acta')),
                ('descripcion', models.TextField()),
                ('archivo', models.FileField(null=True, upload_to='documentos/MECIP/actas/', verbose_name='Archivo')),
                ('status', models.BooleanField()),
                ('anho_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='App.anho', verbose_name='Año')),
            ],
        ),
    ]
