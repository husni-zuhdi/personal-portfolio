from django.db import models

# Create your models here.

class Profile(models.Model):
    fullname = models.CharField(max_length=100)
    nickname = models.CharField(max_length=20)
    photo = models.FilePathField(path="/img")
    description = models.TextField()
    email = models.CharField(max_length=100)
    github_link = models.CharField(max_length=200, default="https://github.com/Hazunanafaru/")
    portfolio_link = models.CharField(max_length=200, default="http://husni-portofolio.xyz/")