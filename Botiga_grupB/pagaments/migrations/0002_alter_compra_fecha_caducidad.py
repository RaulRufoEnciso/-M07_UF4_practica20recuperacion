# Generated by Django 4.2.2 on 2023-06-11 14:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pagaments', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='compra',
            name='fecha_caducidad',
            field=models.CharField(max_length=5),
        ),
    ]
