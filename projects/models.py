from django.db import models
from django.conf import settings
import os

# Create your models here.

class Project(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    technology = models.CharField(max_length=20)
    link = models.CharField(max_length=200, default="https://github.com/Hazunanafaru/")
    image = models.FilePathField(path="/img")