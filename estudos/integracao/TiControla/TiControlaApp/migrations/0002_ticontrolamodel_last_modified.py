# Generated by Django 3.2.5 on 2022-07-15 14:54

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('TiControlaApp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='ticontrolamodel',
            name='last_modified',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now),
            preserve_default=False,
        ),
    ]
