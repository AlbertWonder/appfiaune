# Generated by Django 4.0.6 on 2022-08-09 13:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('App', '0022_postblog_publicado_fin'),
    ]

    operations = [
        migrations.AlterField(
            model_name='postblog',
            name='status',
            field=models.CharField(choices=[('draft', 'Draft'), ('publicado', 'Publicado'), ('destacado', 'Destacado')], default='draft', max_length=10),
        ),
    ]
