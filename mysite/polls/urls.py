from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    
    path('home', views.home, name='home'),
    path('don_vi', views.don_vi, name='don_vi'),
    path('thong_tin_hc', views.thong_tin_hc, name='thong_tin_hc'),
    # method save_home trong view.py. Test bằng cách gọi link http://localhost:8000/polls/save_home trong postman
    path('save_home', views.save_home, name='save_home'),
    # method save_bacsi trong view.py. Test bằng cách gọi link http://localhost:8000/polls/save_bacsi trong postman
    path('save_bacsi', views.save_bacsi, name='save_bacsi'),
]