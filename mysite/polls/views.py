import CONST_ROOT
from DataBase.EntitiesDao.UltrasoundExaminationDao import UltrasoundExaminationDao
from DataBase.Entities.MauSieuAm import MauSieuAm
from DataBase.EntitiesDao.PatientsDao import PatientsDao
from DataBase.Entities.BenhNhan import BenhNhan
from DataBase.EntitiesDao.DoctorDao import DoctorDao
from DataBase.Entities.BacSi import BacSi
from django.shortcuts import render
import json

# Create your views here.
from django.http import HttpResponse, HttpRequest 

def index(request):
    mausa = MauSieuAm(77, 101, "Mau A", "Sieu Am Bung", "Nam", 0, "Chua co", 5, 3, "2D",
                                     "Nen ghi chu y", "Khong co", "Binh thuong", "Can lam them cac xet nghiem khac")

    UltrasoundExaminationDao().insert(mausieuam=mausa)
    return HttpResponse("Hello, world. You're at the polls index. 55555")


def home(request):
    return render(request, CONST_ROOT.ROOT + '/mysite/templates_html/index.html')


def don_vi(request):
    return render(request, CONST_ROOT.ROOT + '/mysite/templates_html/don_vi.html')


def thong_tin_hc(request):
    return render(request, CONST_ROOT.ROOT + '/mysite/templates_html/thongke.html')


def save_home(request : HttpRequest):
    request_body = request.body
    datas = json.loads(request_body)
    json_obj = json.loads(request_body)
    # goi class DAO va luu data
    print(request.method)
    
    return HttpResponse("") 
    pass 

def save_bacsi(request):
    request_body = request.body
    datas = json.loads(request_body)
    json_obj = json.loads(request_body)
    # goi class DAO va luu data
    
    return HttpResponse("")
    pass