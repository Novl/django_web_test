from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class Question(models.Model):
    objects = QuestionManager() 
    title = models.CharField()
    text = models.TextField()
    added_at = models.DateField(auto_now_add=True)
    rating  = models.IntegerField()
    author = models.CharField()
    likes = models.ManyToManyField(User, related_name='question_like_user')

class Answer(models.Model):
    text = models.TextField()
    added_at = models.DateField(auto_now_add=True)
    question = models.TextField()
    author = models.CharField()


class QuestionManager(models.Manager):
    def new(self):
        return self.order_by('-added_at')

    def popular(self):
        return self.order_by('-rating')
