from django.shortcuts import render
from django.http.response import HttpResponse

# Create your views here.

def health_check(request):

    return HttpResponse(
        "healthy"
    )