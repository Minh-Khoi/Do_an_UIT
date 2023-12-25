from DataBase.Entities import MauSieuAm
from DataBase.MSSQL_Connection_Static import MSSQLConnection
import dbconfig

class UltrasoundExaminationDao:
    def insert(self, mausieuam):
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect('SQL Server', 
                                                                 dbconfig.server, 
                                                                 dbconfig.database, 
                                                                 dbconfig.username, 
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = ('insert into tb_MauSieuAm (STT, TenMau, TieuDe, GioiTinh, ChuaSuDung, '
                   'ChanDoan, SoHinhInToiDa, SoPhanMoTa, KieuIn, NoiDung1, NoiDung2, KetLuan, DeNghi) '
                   'values (\'{0}\',\'{1}\',\'{2}\',\'{3}\',\'{4}\',\'{5}\',\'{6}\',\'{7}\''
                   ',\'{8}\',\'{9}\',\'{10}\',\'{11}\',\'{12}\')').format(
                mausieuam.getstt(),
                mausieuam.gettenmau(),
                mausieuam.gettieude(),
                mausieuam.getgioitinh(),
                mausieuam.getchuasudung(),
                mausieuam.getchuandoan(),
                mausieuam.getsohinhtoida(),
                mausieuam.getsophanmota(),
                mausieuam.getkieuin(),
                mausieuam.getnoidung1(),
                mausieuam.getnoidung2(),
                mausieuam.getketluan(),
                mausieuam.getdenghi()
            )
            cursor.execute(sql)
            connection.commit()
        except Exception as e:
            print(e)
        finally:
            MSSQLConnection.MSSQLConnection.close_connection()

    def update(self, mausieuam):
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect('SQL Server', 
                                                                 dbconfig.server, 
                                                                 dbconfig.database, 
                                                                 dbconfig.username, 
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = ('update tb_MauSieuAm '
                   'set STT=\'{0}\', TenMau=\'{1}\', TieuDe=\'{2}\', GioiTinh=\'{3}\', '
                   'ChuaSuDung=\'{4}\', ChanDoan = \'{5}\', SoHinhInToiDa = \'{6}\', '
                   'SoPhanMoTa = \'{7}\', KieuIn = \'{8}\', NoiDung1 = \'{9}\', '
                   'NoiDung2 = \'{10}\', KetLuan = \'{11}\', DeNghi = \'{12}\' where id = \'{13}\'').format(
                mausieuam.getstt(),
                mausieuam.gettenmau(),
                mausieuam.gettieude(),
                mausieuam.getgioitinh(),
                mausieuam.getchuasudung(),
                mausieuam.getchuandoan(),
                mausieuam.getsohinhtoida(),
                mausieuam.getsophanmota(),
                mausieuam.getkieuin(),
                mausieuam.getnoidung1(),
                mausieuam.getnoidung2(),
                mausieuam.getketluan(),
                mausieuam.getdenghi(),
                mausieuam.getid())
            cursor.execute(sql)
            connection.commit()

        except Exception as e:
            print(e)
        finally:
            MSSQLConnection.MSSQLConnection.close_connection()

    def delete(self, id):
        """Delete by id"""
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect('SQL Server', 
                                                                 dbconfig.server, 
                                                                 dbconfig.database, 
                                                                 dbconfig.username, 
                                                                 dbconfig.password)
            cursor = connection.cursor()

            # Execute custom query
            sql = "delete from tb_MauSieuAm where id= " + str(id)
            cursor.execute(sql)
            connection.commit()
            print("Delete completely with id: ", id)
        except Exception as e:
            print(e)
        finally:
            MSSQLConnection.MSSQLConnection.close_connection()

    def queryall(self):
        """Return list of patients"""
        ultrasoundexaminations = []
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect('SQL Server', 
                                                                 dbconfig.server, 
                                                                 dbconfig.database, 
                                                                 dbconfig.username, 
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = "select * from tb_MauSieuAm"
            cursor.execute(sql)
            rows = cursor.fetchall()
            for row in rows:
                ue = MauSieuAm.MauSieuAm(row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9],
                                         row[10], row[11], row[12], row[13])
                ultrasoundexaminations.append(ue)
            # Close connection
        except Exception as e:
            print(e)
        finally:
            MSSQLConnection.MSSQLConnection.close_connection()
            return ultrasoundexaminations


if __name__ == '__main__':
    ued = UltrasoundExaminationDao()
    mausieuam1 = MauSieuAm.MauSieuAm(77, 101, "Mau A", "Sieu Am Bung", "Nam", 0, "Chua co", 5, 3, "2D",
                                     "Nen ghi chu y", "Khong co", "Binh thuong", "Can lam them cac xet nghiem khac")

    for msa in ued.queryall():
        print(msa)
