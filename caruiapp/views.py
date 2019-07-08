from django.shortcuts import render
from django.http.response import HttpResponseRedirect
import caruiapp.static.python.parking_anal as pyfile
import pandas as pd


# Create your views here.
def Main(request):
    return render(request, "main.html")

def Intro(request):
    return render(request, "data_anal_intro/intro.html")

def Weekday(request):
    return render(request, "data_anal_proc/weekday.html")

def Weekend(request):
    pyfile.__name__ # svg파일 한번씩 새로 갱신해서 사용.
    
    return render(request, "data_anal_proc/weekend.html")