from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse 
def test(request, *args, **kwargs):
    return HttpResponse('OK')

def question(request, num=None, *args, **kwargs):
    return HttpResponse('info about q - ' + num)