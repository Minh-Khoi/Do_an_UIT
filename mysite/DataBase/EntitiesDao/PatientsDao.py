from DataBase.Entities import BenhNhan
from DataBase.MSSQL_Connection_Static import MSSQLConnection
import dbconfig


class PatientsDao:
    def queryallpatients(self):
        """Return list of patients"""
        patients = []
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver,
                                                                 dbconfig.server,
                                                                 dbconfig.database,
                                                                 dbconfig.username,
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = "select * from tb_BenhNhan"
            # cursor.execute(sql)
            rows = cursor.execute(sql).fetchall()
            for row in rows:
                bn = BenhNhan.BenhNhan(row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8])
                patients.append(bn)
        except Exception as e:
            print(e)
        finally:
            # Close connection
            # MSSQLConnection.MSSQLConnection.close_connection()
            cursor.close()
            connection.close()
            return patients

    def querybyid(self, id):
        benhnhan = None
        """Return a patient by id"""
        # patients = []
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver,
                                                                 dbconfig.server,
                                                                 dbconfig.database,
                                                                 dbconfig.username,
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = "select * from tb_BenhNhan where id=" + id
            cursor.execute(sql)
            row = cursor.fetchone()
            if row:
                benhnhan = BenhNhan.BenhNhan(row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8])
        except Exception as e:
            print(e)
        finally:
            # Close connection
            # MSSQLConnection.MSSQLConnection.close_connection()
            cursor.close()
            connection.close()
            return benhnhan

    def insert(self, bn):
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver,
                                                                 dbconfig.server,
                                                                 dbconfig.database,
                                                                 dbconfig.username,
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = ('insert into tb_BenhNhan(IDBenhNhan, HoTenBenhNhan, GioiTinh, NamSinh, DiaChi, SDT, BHYT, Del) '
                   'values (\'{0}\',\'{1}\',\'{2}\',\'{3}\',\'{4}\',\'{5}\',\'{6}\',\'{7}\')').format(
                bn.getidbenhnhan(),
                bn.gethotenbenhnhan(),
                bn.getgioitinh(),
                bn.getnamsinh(),
                bn.getdiachi(),
                bn.getsdt(),
                bn.getbhyt(),
                bn.getdel()
            )
            cursor.execute(sql)
            connection.commit()
        except Exception as e:
            print(e)
        finally:
            # MSSQLConnection.MSSQLConnection.close_connection()
            cursor.close()
            connection.close()

    def update(self, bn):
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver,
                                                                 dbconfig.server,
                                                                 dbconfig.database,
                                                                 dbconfig.username,
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = ('update tb_BenhNhan set '
                   'IDBenhNhan = \'{0}\', HoTenBenhNhan = \'{1}\', GioiTinh=\'{2}\', '
                   'NamSinh={3}, DiaChi=\'{4}\', SDT=\'{5}\', BHYT=\'{6}\', Del=\'{7}\' '
                   'where id ={8}').format(bn.getidbenhnhan(),
                                           bn.gethotenbenhnhan(),
                                           bn.getgioitinh(),
                                           bn.getnamsinh(),
                                           bn.getdiachi(),
                                           bn.getsdt(),
                                           bn.getbhyt(),
                                           bn.getdel(),
                                           bn.getid())
            cursor.execute(sql)
            connection.commit()

        except Exception as e:
            print(e)
        finally:
            # MSSQLConnection.MSSQLConnection.close_connection()
            cursor.close()
            connection.close()

    def delete(self, id):
        """Delete by id"""
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver,
                                                                 dbconfig.server,
                                                                 dbconfig.database,
                                                                 dbconfig.username,
                                                                 dbconfig.password)
            cursor = connection.cursor()

            # Execute custom query
            sql = "delete from tb_BenhNhan where id= " + str(id)
            cursor.execute(sql)
            connection.commit()
            print("Delete completely with id: ", id)
        except Exception as e:
            print(e)
        finally:
            # MSSQLConnection.MSSQLConnection.close_connection()
            cursor.close()
            connection.close()

# if __name__ == '__main__':
#     pd = PatientsDao()
#     patient1 = BenhNhan.BenhNhan(509, "BN001", "John Doe", "Male", 1990, "123 Main St", "555-1234", "123456789", "none")
#     # pd.insert(patient1)
#     pd.delete(509)
#     for bn in pd.queryallpatients():
#         print(bn)
