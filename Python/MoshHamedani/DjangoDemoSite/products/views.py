from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.

# /products -> index
def index(request):
    return HttpResponse('Hello Django')