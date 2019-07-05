from django.urls import path
from caruiapp import views

urlpatterns = [
    path('school/', views.School),

]
