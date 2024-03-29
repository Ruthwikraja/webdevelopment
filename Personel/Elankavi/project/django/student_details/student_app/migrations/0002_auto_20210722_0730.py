# Generated by Django 3.2.4 on 2021-07-22 02:00

from django.db import migrations, models
import phonenumber_field.modelfields


class Migration(migrations.Migration):

    dependencies = [
        ('student_app', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='stu_details',
            name='address',
            field=models.TextField(null=True),
        ),
        migrations.AddField(
            model_name='stu_details',
            name='email',
            field=models.EmailField(max_length=200, null=True),
        ),
        migrations.AddField(
            model_name='stu_details',
            name='image',
            field=models.ImageField(null=True, upload_to='uploads'),
        ),
        migrations.AddField(
            model_name='stu_details',
            name='phone_no',
            field=phonenumber_field.modelfields.PhoneNumberField(max_length=128, null=True, region=None),
        ),
        migrations.AlterField(
            model_name='stu_details',
            name='gender',
            field=models.CharField(choices=[('Male', 'Male'), ('Female', 'Female'), ('others', 'others')], max_length=100),
        ),
    ]
