# Generated by Django 4.0.6 on 2022-07-28 01:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('App', '0017_documentosmecip'),
    ]

    operations = [
        migrations.AlterField(
            model_name='documentosmecip',
            name='elementos_id',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.PROTECT, to='App.elementosmecip', verbose_name='Elementos'),
        ),
    ]
