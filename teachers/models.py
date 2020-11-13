from django.db import models
from datetime import datetime


class Teacher(models.Model):
  name = models.CharField(max_length=200)
  username = models.CharField(max_length=200,unique=True)
  description = models.TextField(blank=True)
  phone = models.CharField(max_length=15)
  email = models.CharField(max_length=50, unique=True)
  password = models.CharField(max_length=50)
  hire_date = models.DateTimeField(default=datetime.now, blank=True)
  def __str__(self):
    return self.name

class ClassListing(models.Model):
  classname = models.CharField(max_length=200)
  topics = models.CharField(max_length=200)
  description = models.TextField(blank=True)
  teacherid = models.ForeignKey(Teacher,on_delete=models.DO_NOTHING)
  def __str__(self):
    return self.classname
  