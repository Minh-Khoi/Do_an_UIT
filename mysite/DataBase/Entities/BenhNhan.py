class BenhNhan:
    def __init__(self, id, idbenhnhan, hotenbenhnhan, gioitinh, namsinh, diachi, sdt, bhyt, dlt):
        self.__id = id
        self.__idbenhnhan = idbenhnhan
        self.__hotenbenhnhan = hotenbenhnhan
        self.__gioitinh = gioitinh
        self.__namsinh = namsinh
        self.__diachi = diachi
        self.__sdt = sdt
        self.__bhyt = bhyt
        self.__del = dlt

    def getid(self):
        return self.__id

    def getidbenhnhan(self):
        return self.__idbenhnhan

    def gethotenbenhnhan(self):
        return self.__hotenbenhnhan

    def getgioitinh(self):
        return self.__gioitinh

    def getnamsinh(self):
        return self.__namsinh

    def getdiachi(self):
        return self.__diachi

    def getsdt(self):
        return self.__sdt

    def getbhyt(self):
        return self.__bhyt

    def getdel(self):
        return self.__del

    def __str__(self):
        return str([self.__id, self.__idbenhnhan, self.__hotenbenhnhan, self.__gioitinh, self.__namsinh, self.__diachi,
                    self.__sdt, self.__bhyt, self.__del])
