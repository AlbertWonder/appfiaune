# Generated by Django 4.0.6 on 2022-07-12 12:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('App', '0008_alter_circularmecip_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='circularmecip',
            name='status',
            field=models.BooleanField(default=1),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='resolucionesmecip',
            name='status',
            field=models.BooleanField(null=True),
        ),
    ]
