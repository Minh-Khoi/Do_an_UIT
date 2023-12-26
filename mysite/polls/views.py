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


def save_home(request):
    try:
        request_body = request.body
        data = json.loads(request_body)

        # Extract data for BenhNhan
        benhnhan_data = data.get('tb_BenhNhan', [])[0]
        ID = benhnhan_data.get('ID')
        IDBenhNhan = benhnhan_data.get('IDBenhNhan')
        HoTenBenhNhan = benhnhan_data.get('HoTenBenhNhan')
        GioiTinh = benhnhan_data.get('GioiTinh')
        NamSinh = benhnhan_data.get('NamSinh')
        DiaChi = benhnhan_data.get('DiaChi')
        SDT = benhnhan_data.get('SDT')
        BHYT = benhnhan_data.get('BHYT')
        Del = benhnhan_data.get('Del')


        bn = BenhNhan(id=ID, idbenhnhan=IDBenhNhan, hotenbenhnhan=HoTenBenhNhan, gioitinh=GioiTinh,
                            namsinh=NamSinh, diachi=DiaChi, sdt=SDT, bhyt=BHYT, dlt=Del)

        PatientsDao().insert(bn)

        sieuam_data = data.get('tb_SieuAm', [])[0]
        ID_SieuAm = sieuam_data.get('ID')
        Ngay = sieuam_data.get('Ngay')
        SoPhieu = sieuam_data.get('SoPhieu')
        IDBenhNhan_SieuAm = sieuam_data.get('IDBenhNhan')
        TenBenhNhan_SieuAm = sieuam_data.get('TenBenhNhan')
        TenBacSiSieuAm = sieuam_data.get('TenBacSiSieuAm')
        TenBacSiChiDinh = sieuam_data.get('TenBacSiChiDinh')
        MauSieuAm = sieuam_data.get('MauSieuAm')
        ChanDoan = sieuam_data.get('ChanDoan')
        NoiDung1 = sieuam_data.get('NoiDung1')
        NoiDung2 = sieuam_data.get('NoiDung2')
        KetLuan = sieuam_data.get('KetLuan')
        DeNghi = sieuam_data.get('DeNghi')
        Khoa = sieuam_data.get('Khoa')

        sieuam = SieuAm(id=ID_SieuAm, idbenhnhan=IDBenhNhan_SieuAm, tenbenhnhan=TenBenhNhan_SieuAm, ngay=Ngay, sophieu=SoPhieu, tenbacsisieuam=TenBacSiSieuAm,
                        tenbacsichidinh=TenBacSiChiDinh, mausieuam=MauSieuAm, chuandoan=ChanDoan, noidung1=NoiDung1,
                        noidung2=NoiDung2, ketluan=KetLuan, denghi=DeNghi, khoa=Khoa)

        UltrasoundDao().insert(sieuam)

        return HttpResponse('Data saved successfully!')
    except Exception as e:
        return HttpResponse(f'Error: {str(e)}')

def save_bacsi(request):
    request_body = request.body
    datas = json.loads(request_body)
    json_obj = json.loads(request_body)
    # goi class DAO va luu data
    
    return HttpResponse("")
    pass