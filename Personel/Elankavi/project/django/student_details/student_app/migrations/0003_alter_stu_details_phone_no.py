# Generated by Django 3.2.4 on 2021-07-22 02:09

from django.db import migrations
import phonenumber_field.modelfields


class Migration(migrations.Migration):

    dependencies = [
        ('student_app', '0002_auto_20210722_0730'),
    ]

    operations = [
        migrations.AlterField(
            model_name='stu_details',
            name='phone_no',
            field=phonenumber_field.modelfields.PhoneNumberField(blank=True, max_length=128, null=True, region=None),
        ),
    ]
