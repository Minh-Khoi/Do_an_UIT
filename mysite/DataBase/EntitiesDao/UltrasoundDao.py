from mysite.DataBase.Entities import SieuAm
from mysite.DataBase.MSSQL_Connection_Static import MSSQLConnection


class UltrasoundDao:
    def delete(self, id):
        """Delete by id"""
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect('SQL Server', 'DANHTRANCONG', 'python', '', '')
            cursor = connection.cursor()

            # Execute custom query
            sql = "delete from tb_SieuAm where id= " + str(id)
            cursor.execute(sql)
            connection.commit()
            print("Delete completely with id: ", id)
        except Exception as e:
            print(e)
        finally:
            MSSQLConnection.MSSQLConnection.close_connection()

    def insert(self, sieuam):
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect('SQL Server', 'DANHTRANCONG', 'python', '', '')
            cursor = connection.cursor()
            # Execute custom query
            sql = ('insert into tb_SieuAm(ngay, sophieu, idbenhnhan, tenbenhnhan, tenbacsisieuam, tenbacsichidinh, '
                   'mausieuam, chandoan, noidung1, noidung2, ketluan, denghi, khoa) '
                   'values (\'{0}\',\'{1}\',\'{2}\',\'{3}\',\'{4}\',\'{5}\',\'{6}\',\'{7}\''
                   ',\'{8}\',\'{9}\',\'{10}\',\'{11}\',\'{12}\')').format(
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
            MSSQLConnection.MSSQLConnection.close_connection()

    def update(self, sieuam):
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect('SQL Server', 'DANHTRANCONG', 'python', '', '')
            cursor = connection.cursor()
            # Execute custom query
            sql = ('update tb_SieuAm '
                   'set ngay=\'{0}\', sophieu=\'{1}\', idbenhnhan=\'{2}\', tenbenhnhan=\'{3}\', '
                   'tenbacsisieuam=\'{4}\', tenbacsichidinh = \'{5}\', mausieuam = \'{6}\', '
                   'chandoan = \'{7}\', noidung1 = \'{8}\', noidung2 = \'{9}\', '
                   'ketluan = \'{10}\', denghi = \'{11}\', khoa = \'{12}\' where id = \'{13}\'').format(
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
                sieuam.getid())
            cursor.execute(sql)
            connection.commit()

        except Exception as e:
            print(e)
        finally:
            MSSQLConnection.MSSQLConnection.close_connection()

    def queryall(self):
        """Return list of patients"""
        ultrasound = []
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect('SQL Server', 'DANHTRANCONG', 'python', '', '')
            cursor = connection.cursor()
            # Execute custom query
            sql = "select * from tb_MauSieuAm"
            cursor.execute(sql)
            rows = cursor.fetchall()
            for row in rows:
                ue = SieuAm.SieuAm(row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9],
                                   row[10], row[11], row[12], row[13])
                ultrasound.append(ue)
            # Close connection
        except Exception as e:
            print(e)
        finally:
            MSSQLConnection.MSSQLConnection.close_connection()
            return ultrasound


if __name__ == '__main__':
    ud = UltrasoundDao()
    sa = SieuAm.SieuAm(116, "2023-01-01", "ABC123", "BN001", "John Doe",
                       "Dr. Smith", "Dr Danh", "Mau A", "Some diagnosis", "Details 1", "Details 2", "Normal",
                       "Follow-up", "Radiology")

    for s in ud.queryall():
        print(s)
