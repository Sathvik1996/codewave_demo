# Generated by Django 3.0.5 on 2020-11-12 17:47

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('teachers', '0002_classlisting'),
        ('student_profiles', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student',
            name='student_listing_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='teachers.ClassListing'),
        ),
    ]