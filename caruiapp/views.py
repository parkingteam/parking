from django.shortcuts import render
from django.http.response import HttpResponseRedirect

# Create your views here.
def Main(request):
    return render(request, "index.html")

def School(request):
    return render(request, "school.html")