from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),

    path('home', views.home, name='home'),
    path('don_vi', views.don_vi, name='don_vi'),
    path('thong_tin_hc', views.thong_tin_hc, name='thong_tin_hc'),
    
    path('home/<str:idbn>', views.home_, name='home_'),
    # method save_home trong view.py. Test bằng cách gọi link http://localhost:8000/polls/save_home trong postman
    path('save_home', views.save_home, name='save_home'),
    # method save_bacsi trong view.py. Test bằng cách gọi link http://localhost:8000/polls/save_bacsi trong postman
    path('save_bacsi', views.save_bacsi, name='save_bacsi'),
    path('update_bacsi', views.update_bacsi, name='save_bacsi'),
    path('delete_bacsi', views.delete_bacsi, name='delete_bacsi'),
    path('delete_sieuam', views.delete_sieuam, name='delete_sieuam'),

    
    # method query_thongke trong view.py. 
    # Test bằng cách gọi link http://localhost:8000/polls/query_thongke trong postman
    path('query_thongke', views.query_thongke, name='query_thongke'),
    
    # method query_ds_bacsi trong view.py. 
    # Test bằng cách gọi link http://localhost:8000/polls/query_ds_bacsi trong postman
    path('query_ds_bacsi', views.query_ds_bacsi, name='query_ds_bacsi'),
    
    # method query_ds_mausieuam trong view.py. 
    # Test bằng cách gọi link http://localhost:8000/polls/query_ds_mausieuam trong postman
    path('query_ds_mausieuam', views.query_ds_mausieuam, name='query_ds_mausieuam'),
]