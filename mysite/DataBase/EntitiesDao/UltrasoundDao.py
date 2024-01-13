from DataBase.Entities import SieuAm
from DataBase.MSSQL_Connection_Static import MSSQLConnection
import dbconfig


class UltrasoundDao:
    def delete(self, id):
        """Delete by idbenhnhan"""
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver,
                                                                 dbconfig.server,
                                                                 dbconfig.database,
                                                                 dbconfig.username,
                                                                 dbconfig.password)
            cursor = connection.cursor()

            # Execute custom query
            sql = "delete from tb_SieuAm where idbenhnhan= " + str(id)
            cursor.execute(sql)
            connection.commit()
            print("Delete completely with idbenhnhan: ", id)
        except Exception as e:
            print(e)
        finally:
            # MSSQLConnection.MSSQLConnection.close_connection()
            cursor.close()
            connection.close()

    def insert(self, sieuam):
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver,
                                                                 dbconfig.server,
                                                                 dbconfig.database,
                                                                 dbconfig.username,
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = ('insert into tb_SieuAm(ngay, sophieu, idbenhnhan, tenbenhnhan, tenbacsisieuam, tenbacsichidinh, '
                   'mausieuam, chandoan, noidung1, noidung2, ketluan, denghi, khoa) '
                   'values (\'{0}\',\'{1}\',\'{2}\',N\'{3}\',N\'{4}\',\'{5}\',N\'{6}\',N\'{7}\''
                   ',N\'{8}\',N\'{9}\',N\'{10}\',N\'{11}\',N\'{12}\')').format(
                sieuam.getngay(),
                sieuam.getsophieu(),
                sieuam.getidbenhnhan(),
                sieuam.gettenbenhnhan(),
                sieuam.gettenbacsisieuam(),
                sieuam.gettenbacsichidinh(),
                sieuam.getmausieuam(),
                sieuam.getchuandoan(),
                sieuam.getnoidung1(),
                sieuam.getnoidung2(),
                sieuam.getketluan(),
                sieuam.getdenghi(),
                sieuam.getkhoa()

            )
            cursor.execute(sql)
            connection.commit()
        except Exception as e:
            print(e)
        finally:
            # MSSQLConnection.MSSQLConnection.close_connection()
            cursor.close()
            connection.close()

    def update(self, sieuam):
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver,
                                                                 dbconfig.server,
                                                                 dbconfig.database,
                                                                 dbconfig.username,
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = ('update tb_SieuAm '
                   'set ngay=\'{0}\', sophieu=\'{1}\', idbenhnhan=\'{2}\', tenbenhnhan=N\'{3}\', '
                   'tenbacsisieuam=\'{4}\', tenbacsichidinh = \'{5}\', mausieuam = N\'{6}\', '
                   'chandoan = N\'{7}\', noidung1 = N\'{8}\', noidung2 = \'{9}\', '
                   'ketluan = N\'{10}\', denghi = N\'{11}\', khoa = N\'{12}\' where idbenhnhan = \'{13}\'').format(
                sieuam.getngay(),
                sieuam.getsophieu(),
                sieuam.getidbenhnhan(),
                sieuam.gettenbenhnhan(),
                sieuam.gettenbacsisieuam(),
                sieuam.gettenbacsichidinh(),
                sieuam.getmausieuam(),
                sieuam.getchuandoan(),
                sieuam.getnoidung1(),
                sieuam.getnoidung2(),
                sieuam.getketluan(),
                sieuam.getdenghi(),
                sieuam.getkhoa(),
                sieuam.getidbenhnhan())
            cursor.execute(sql)
            connection.commit()

        except Exception as e:
            print(e)
        finally:
            # MSSQLConnection.MSSQLConnection.close_connection()
            cursor.close()
            connection.close()

    def queryall(self):
        """Return list of patients"""
        ultrasound = []
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver,
                                                                 dbconfig.server,
                                                                 dbconfig.database,
                                                                 dbconfig.username,
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = "select * from tb_SieuAm"
            # cursor.execute(sql)
            rows = cursor.execute(sql).fetchall()
            for row in rows:
                ue = SieuAm.SieuAm(row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9],
                                   row[10], row[11], row[12], row[13])
                ultrasound.append(ue)
        except Exception as e:
            print(e)
        finally:
            # Close connection
            # MSSQLConnection.MSSQLConnection.close_connection()
            cursor.close()
            connection.close()
            return ultrasound

    def querybyid(self, idbn):
        """Return list of patients"""
        ultrasound = None
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver,
                                                                 dbconfig.server,
                                                                 dbconfig.database,
                                                                 dbconfig.username,
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = "select * from tb_SieuAm where IDBenhNhan='" + str(idbn) + "'"
            cursor.execute(sql)
            row = cursor.fetchone()
            if row:
                ultrasound = SieuAm.SieuAm(row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8],
                                           row[9],
                                           row[10], row[11], row[12], row[13])

        except Exception as e:
            print(e)
        finally:
            # Close connection
            # MSSQLConnection.MSSQLConnection.close_connection()
            cursor.close()
            connection.close()
            return ultrasound


# if __name__ == '__main__':
#     ud = UltrasoundDao()
#     sa = SieuAm.SieuAm(116, "2023-01-01", "ABC123", "BN001", "John Doe",
#                        "Dr. Smith", "Dr Danh", "Mau A", "Some diagnosis", "Details 1", "Details 2", "Normal",
#                        "Follow-up", "Radiology")

#     for s in ud.queryall():
#         print(s)
