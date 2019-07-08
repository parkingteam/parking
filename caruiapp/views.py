from django.shortcuts import render
from django.http.response import HttpResponseRedirect

# Create your views here.
def Main(request):
    return render(request, "main.html")

def Intro(request):
    return render(request, "data_anal_intro/intro.html")

def Weekday(request):
    return render(request, "data_anal_proc/weekday.html")

def Weekend(request):
    return render(request, "data_anal_proc/weekend.html")

def Result(request):
     return render(request, "data_anal_proc/result.html")