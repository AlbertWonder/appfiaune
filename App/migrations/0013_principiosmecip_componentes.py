# Generated by Django 4.0.6 on 2022-07-26 13:03

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('App', '0012_remove_componentesmecip_princiopios_id_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='principiosmecip',
            name='componentes',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='App.componentesmecip', verbose_name='Principios'),
        ),
    ]
