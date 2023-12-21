from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    
    path('home', views.home, name='home'),
    path('don_vi', views.don_vi, name='don_vi'),
    path('thong_tin_hc', views.thong_tin_hc, name='thong_tin_hc'),
]