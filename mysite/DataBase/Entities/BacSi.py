class BacSi:
    def __init__(self, id, hoTen, chuKy):
        self.__id = id
        self.__hoTen = hoTen
        self.__chuKy = chuKy

    def __str__(self):
        return str([self.__id, self.__hoTen, self.__chuKy])

    def gethoten(self):
        return self.__hoTen

    def getchuky(self):
        return self.__chuKy

    def getid(self):
        return self.__id


if __name__ == '__main__':
    print(123)
