from django.shortcuts import render
from django.http.response import HttpResponse


def index(request):
    return HttpResponse('{"message": "Hello world"}', content_type="application/json")