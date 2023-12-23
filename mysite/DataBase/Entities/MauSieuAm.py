class MauSieuAm:
    def __init__(self, id, stt, tenmau, tieude, gioitinh, chuasudung, chuandoan, sohinhtoida, sophanmota, kieuin,
                 noidung1, noidung2, ketluan, denghi):
        self.__id = id
        self.__stt = stt
        self.__tenmau = tenmau
        self.__tieude = tieude
        self.__gioitinh = gioitinh
        self.__chuasudung = chuasudung
        self.__chuandoan = chuandoan
        self.__sohinhtoida = sohinhtoida
        self.__sophanmota = sophanmota
        self.__kieuin = kieuin
        self.__noidung1 = noidung1
        self.__noidung2 = noidung2
        self.__ketluan = ketluan
        self.__denghi = denghi

    def getid(self):
        return self.__id

    def getstt(self):
        return self.__stt

    def gettenmau(self):
        return self.__tenmau

    def gettieude(self):
        return self.__tieude

    def getgioitinh(self):
        return self.__gioitinh

    def getchuasudung(self):
        return self.__chuasudung

    def getchuandoan(self):
        return self.__chuandoan

    def getsohinhtoida(self):
        return self.__sohinhtoida

    def getsophanmota(self):
        return self.__sophanmota

    def getkieuin(self):
        return self.__kieuin

    def getnoidung1(self):
        return self.__noidung1

    def getnoidung2(self):
        return self.__noidung2

    def getketluan(self):
        return self.__ketluan

    def getdenghi(self):
        return self.__denghi

    def __str__(self):
        return str([self.__id, self.__stt, self.__tenmau, self.__tieude, self.__gioitinh,
                    self.__chuasudung, self.__chuandoan, self.__sohinhtoida, self.__sophanmota,
                    self.__kieuin, self.__noidung1, self.__noidung2, self.__ketluan, self.__denghi])
