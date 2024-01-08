class SieuAm:
    def __init__(self, id, ngay, sophieu, idbenhnhan, tenbenhnhan, tenbacsisieuam, tenbacsichidinh, mausieuam,
                 chuandoan, noidung1, noidung2, ketluan, denghi, khoa):
        self.__id = id
        self.__ngay = str(ngay)
        self.__sophieu = sophieu
        self.__idbenhnhan = idbenhnhan
        self.__tenbenhnhan = tenbenhnhan
        self.__tenbacsisieuam = tenbacsisieuam
        self.__tenbacsichidinh = tenbacsichidinh
        self.__mausieuam = mausieuam
        self.__chuandoan = chuandoan
        self.__noidung1 = noidung1
        self.__noidung2 = noidung2
        self.__ketluan = ketluan
        self.__denghi = denghi
        self.__khoa = khoa

    def __str__(self):
        return str([self.__id, self.__ngay, self.__sophieu, self.__idbenhnhan, self.__tenbenhnhan,
                    self.__tenbacsisieuam, self.__tenbacsichidinh, self.__mausieuam, self.__chuandoan, self.__noidung1,
                    self.__noidung2, self.__ketluan, self.__denghi, self.__khoa])

    def getid(self):
        return self.__id

    def getngay(self):
        return self.__ngay

    def getsophieu(self):
        return self.__sophieu

    def getidbenhnhan(self):
        return self.__idbenhnhan

    def gettenbenhnhan(self):
        return self.__tenbenhnhan

    def gettenbacsisieuam(self):
        return self.__tenbacsisieuam

    def gettenbacsichidinh(self):
        return self.__tenbacsichidinh

    def getmausieuam(self):
        return self.__mausieuam

    def getchuandoan(self):
        return self.__chuandoan

    def getnoidung1(self):
        return self.__noidung1

    def getnoidung2(self):
        return self.__noidung2

    def getketluan(self):
        return self.__ketluan

    def getdenghi(self):
        return self.__denghi

    def getkhoa(self):
        return self.__khoa
