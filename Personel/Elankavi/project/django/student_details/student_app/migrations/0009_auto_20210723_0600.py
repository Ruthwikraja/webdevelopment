# Generated by Django 3.2.4 on 2021-07-23 00:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student_app', '0008_auto_20210723_0503'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='stu_details',
            name='image',
        ),
        migrations.AlterField(
            model_name='stu_details',
            name='phone_no',
            field=models.CharField(max_length=10),
        ),
    ]