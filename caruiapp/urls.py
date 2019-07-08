from django.urls import path
from caruiapp import views

urlpatterns = [
    path('', views.Main),path('main', views.Main),
    path('intro', views.Intro),
    path('weekday', views.Weekday),
    path('weekend', views.Weekend), 
    path('result2', views.Result2), 
    path('result', views.Result), 
]
