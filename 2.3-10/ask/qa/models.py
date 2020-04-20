from django.db import models

# Create your models here.

class Question(models.Model):
    title = models.CharField()
    text = models.TextField()
    added_at = models.DateField()
    rating  = models.IntegerField()
    author = models.CharField()
    likes = models.ArrayField(models.CharField())

class Answer(models.Model):
    text = models.TextField()
    added_at = models.DateField()
    question = models.TextField()
    author = models.CharField()


class QuestionManager(models.Manager):
    def new(self):
        pass

    def popular(self):
        pass
