# Generated by Django 2.1.5 on 2019-09-19 17:33

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('transfer', '0011_auto_20190918_2242'),
    ]

    operations = [
        migrations.AlterField(
            model_name='dtperiodoftime',
            name='exact',
            field=models.ForeignKey(blank=True, db_column='EXACT_ID', null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='end', to='transfer.VocConfirmation'),
        ),
    ]
