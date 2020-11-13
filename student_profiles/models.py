from django.db import models
from datetime import datetime
from teachers.models import ClassListing

class Student(models.Model):
  username = models.CharField(max_length=200)
  student_listing_id = models.ForeignKey(ClassListing,on_delete=models.DO_NOTHING)
  def __str__(self):
    return self.username