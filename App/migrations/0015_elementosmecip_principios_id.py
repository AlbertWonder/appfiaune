# Generated by Django 4.0.6 on 2022-07-26 14:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('App', '0014_rename_componentes_principiosmecip_componentes_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='elementosmecip',
            name='principios_id',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='App.principiosmecip', verbose_name='Elementos'),
        ),
    ]
