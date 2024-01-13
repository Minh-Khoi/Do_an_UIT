import CONST_ROOT
from DataBase.EntitiesDao.UltrasoundExaminationDao import UltrasoundExaminationDao
from DataBase.Entities.MauSieuAm import MauSieuAm
from DataBase.EntitiesDao.PatientsDao import PatientsDao
from DataBase.Entities.BenhNhan import BenhNhan
from DataBase.EntitiesDao.DoctorDao import DoctorDao
from DataBase.Entities.BacSi import BacSi
from DataBase.EntitiesDao.UltrasoundDao import UltrasoundDao
from DataBase.Entities.SieuAm import SieuAm
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


# Function này mình viết để thực hiện chức năng chỉnh sửa thông tin bệnh nhân
def home_(request, idbn: str):
    benhnhan = PatientsDao().querybyid(idbn)
    sieuam = UltrasoundDao().querybyid(benhnhan.getid())
    context = {
        "tb_BenhNhan": [
            {
                "ID": benhnhan.getid(),
                "IDBenhNhan": benhnhan.getidbenhnhan(),
                "HoTenBenhNhan": benhnhan.gethotenbenhnhan(),
                "GioiTinh": benhnhan.getgioitinh(),
                "NamSinh": benhnhan.getnamsinh(),
                "DiaChi": benhnhan.getdiachi(),
                "SDT": benhnhan.getsdt(),
                "BHYT": benhnhan.getbhyt(),
                "Del": benhnhan.getdel()
            }
        ],
        "tb_SieuAm": [
            {
                "ID": sieuam.getid(),
                "Ngay": sieuam.getngay(),
                "SoPhieu": sieuam.getsophieu(),
                "IDBenhNhan": sieuam.getidbenhnhan(),
                "TenBenhNhan": sieuam.gettenbenhnhan(),
                "TenBacSiSieuAm": sieuam.gettenbacsisieuam(),
                "TenBacSiChiDinh": sieuam.gettenbacsichidinh(),
                "MauSieuAm": sieuam.getmausieuam(),
                "ChanDoan": sieuam.getchuandoan(),
                "NoiDung1": sieuam.getnoidung1(),
                "NoiDung2": sieuam.getnoidung2(),
                "KetLuan": sieuam.getketluan(),
                "DeNghi": sieuam.getdenghi(),
                "Khoa": sieuam.getkhoa()
            } 
            if sieuam is not None else ""
        ]
    }
    return render(request, CONST_ROOT.ROOT + '/mysite/templates_html/index.html', context=context)


def don_vi(request):
    return render(request, CONST_ROOT.ROOT + '/mysite/templates_html/don_vi.html')


def thong_tin_hc(request):
    return render(request, CONST_ROOT.ROOT + '/mysite/templates_html/thongke.html')


def save_home(request):
    try:
        request_body = request.body
        data = json.loads(request_body)
        idinserted = None

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
        if ID.isspace() or len(ID) == 0:
            idinserted = PatientsDao().insert(bn)
        else:
            PatientsDao().update(bn)


        sieuam_data = data.get('tb_SieuAm', [])[0]
        ID_SieuAm = sieuam_data.get('ID')
        Ngay = sieuam_data.get('Ngay')
        SoPhieu = sieuam_data.get('SoPhieu')
        IDBenhNhan_SieuAm = idinserted if idinserted is not None else sieuam_data.get('IDBenhNhan') 
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

        sieuam = SieuAm(id=ID_SieuAm, idbenhnhan=IDBenhNhan_SieuAm, tenbenhnhan=TenBenhNhan_SieuAm, ngay=Ngay,
                        sophieu=SoPhieu, tenbacsisieuam=TenBacSiSieuAm,
                        tenbacsichidinh=TenBacSiChiDinh, mausieuam=MauSieuAm, chuandoan=ChanDoan, noidung1=NoiDung1,
                        noidung2=NoiDung2, ketluan=KetLuan, denghi=DeNghi, khoa=Khoa)
        if ID.isspace() or len(ID) == 0:
            UltrasoundDao().insert(sieuam)
        else:
            UltrasoundDao().update(sieuam)


        return HttpResponse('["Data saved successfully!"]')
    except Exception as e:
        return HttpResponse(f'Error: {str(e)}')


def save_bacsi(request):
    try:
        request_body = request.body
        datas = json.loads(request_body)
        # goi class DAO va luu data

        bacsi_data = datas.get('tb_BacSi', [])[0]
        id = bacsi_data.get('ID')
        ten = bacsi_data.get('HoTenBacSi')
        chuky = bacsi_data.get("HinhChuKy")
        # bs = BacSi(id=11, hoTen="Danh", chuKy="Nullll")
        bs = BacSi(id, ten, chuky)
        # print(bs)
        dd = DoctorDao()
        dd.insert(bs)

        return HttpResponse('["Data saved successfully!"]')
    except Exception as e:
        return HttpResponse(f'Error: {str(e)}')


def update_bacsi(request):
    try:
        request_body = request.body
        datas = json.loads(request_body)
        # goi class DAO va luu data

        bacsi_data = datas.get('tb_BacSi', [])[0]
        id = bacsi_data.get('ID')
        ten = bacsi_data.get('HoTenBacSi')
        chuky = bacsi_data.get("HinhChuKy")
        # bs = BacSi(id=11, hoTen="Danh", chuKy="Nullll")
        bs = BacSi(id, ten, chuky)
        print(bs)
        dd = DoctorDao()
        dd.update(bs)

        return HttpResponse('Update successfully!')
    except Exception as e:
        return HttpResponse(f'Error: {str(e)}')


def delete_bacsi(request):
    try:
        request_body = request.body
        datas = json.loads(request_body)
        # goi class DAO va luu data

        bacsi_data = datas.get('tb_BacSi', [])[0]
        id = bacsi_data.get('ID')
        dd = DoctorDao()
        dd.delete(id)
        return HttpResponse('Delete successfully!')
    except Exception as e:
        return HttpResponse(f'Error: {str(e)}')

def delete_benhnhan(request):
    try:
        request_body = request.body
        datas = json.loads(request_body)

        benhnhan_data = datas.get('tb_BenhNhan', [])[0]
        ID_BenhNhan = benhnhan_data.get('ID')
        #print(ID_BenhNhan)
        PatientsDao().delete(ID_BenhNhan)
        return HttpResponse('Delete successfully!')
    except Exception as e:
        return HttpResponse(f'Error: {str(e)}')


def delete_sieuam(request):
    try:
        request_body = request.body
        datas = json.loads(request_body)
        # goi class DAO va luu data

        sieuam_data = datas.get('tb_SieuAm', [])[0]
        ID_SieuAm = sieuam_data.get('ID')
        print(ID_SieuAm)
        ud = UltrasoundDao()
        ud.delete(ID_SieuAm)
        return HttpResponse('Delete successfully!')
    except Exception as e:
        return HttpResponse(f'Error: {str(e)}')


def query_thongke(request):
    # Query all data from tb_BenhNhan and tb_SieuAm!!
    tb_BenhNhan_list = PatientsDao().queryallpatients()
    tb_dict_BenhNhan_list = []
    for bn in tb_BenhNhan_list:
        dict_benhnhan = {
            "ID": bn.getid(),
            "IDBenhNhan": bn.getidbenhnhan(),
            "HoTenBenhNhan": bn.gethotenbenhnhan(),
            "GioiTinh": bn.getgioitinh(),
            "NamSinh": bn.getnamsinh(),
            "DiaChi": bn.getdiachi(),
            "SDT": bn.getsdt(),
            "BHYT": bn.getbhyt(),
            "Del": bn.getdel()
        }
        tb_dict_BenhNhan_list.append(dict_benhnhan)
    json_string1 = json.dumps(tb_dict_BenhNhan_list)

    # Query all data from tb_SieuAm!!
    tb_SieuAm_list = UltrasoundDao().queryall()
    tb_dict_SieuAm_list = []
    for sa in tb_SieuAm_list:
        dict_sieuam = {
            "ID": sa.getid(),
            "Ngay": sa.getngay(),
            "SoPhieu": sa.getsophieu(),
            "IDBenhNhan": sa.getidbenhnhan(),
            "TenBenhNhan": sa.gettenbenhnhan(),
            "TenBacSiSieuAm": sa.gettenbacsisieuam(),
            "TenBacSiChiDinh": sa.gettenbacsichidinh(),
            "MauSieuAm": sa.getmausieuam(),
            "ChanDoan": sa.getchuandoan(),
            "NoiDung1": sa.getnoidung1(),
            "NoiDung2": sa.getnoidung2(),
            "KetLuan": sa.getketluan(),
            "DeNghi": sa.getdenghi(),
            "Khoa": sa.getkhoa()
        }
        tb_dict_SieuAm_list.append(dict_sieuam)
    json_string2 = json.dumps(tb_dict_SieuAm_list)

    json_string = "{\"tb_BenhNhan\":" + json_string1 + ", \"tb_SieuAm\":" + json_string2 + "}"
    # THen add to a json-string like format https://ideone.com/FzYfwN
    return HttpResponse(json_string)


def query_ds_bacsi(request):
    # Query all data from tb_BacSi
    tb_BacSi_list = DoctorDao().queryalldoctors()
    # chuyển về dạng json
    tb_dict_Bacsi_list = []
    for bacsi in tb_BacSi_list:
        dict_bacsi = {
            "ID": bacsi.getid(),
            "HoTenBacSi": bacsi.gethoten(),
            "HinhChuKy": ""
        }
        tb_dict_Bacsi_list.append(dict_bacsi)
    json_string = json.dumps(tb_dict_Bacsi_list)
    # Then add to a json-string like format https://ideone.com/lprHqn
    return HttpResponse(json_string)
    pass


def query_ds_mausieuam(request):
    # Query all data from tb_MauSieuAm
    tb_mausieuam_list = UltrasoundExaminationDao().queryall()
    # chuyển về dạng json
    tb_dict_mausieuam_list = []
    for mausieuam in tb_mausieuam_list:
        dict_mausieuam = {
            "ID": mausieuam.getid(),
            "STT": mausieuam.getstt(),
            "TenMau": mausieuam.gettenmau(),
            "TieuDe": mausieuam.gettieude(),
            "GioiTinh": mausieuam.getgioitinh(),
            "ChuaSuDung": mausieuam.getchuasudung(),
            "ChanDoan": mausieuam.getchuandoan(),
            "SoHinhInToiDa": mausieuam.getsohinhtoida(),
            "SoPhanMoTa": mausieuam.getsophanmota(),
            "KieuIn": mausieuam.getkieuin(),
            "NoiDung1": mausieuam.getnoidung1(),
            "NoiDung2": mausieuam.getnoidung2(),
            "KetLuan": mausieuam.getketluan(),
            "DeNghi": mausieuam.getdenghi()
        }
        tb_dict_mausieuam_list.append(dict_mausieuam)
    json_string = json.dumps(tb_dict_mausieuam_list)
    # Then add to a json-string like format https://ideone.com/UdF18P
    return HttpResponse(json_string)
