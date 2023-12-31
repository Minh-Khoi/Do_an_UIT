from DataBase.Entities import BacSi
from DataBase.MSSQL_Connection_Static import MSSQLConnection
import dbconfig

class DoctorDao:
    def queryalldoctors(self) -> list[BacSi.BacSi]:
        """Return list of doctors"""
        doctors = []
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver,
                                                                 dbconfig.server, 
                                                                 dbconfig.database, 
                                                                 dbconfig.username, 
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = "select * from tb_BacSi"
            cursor.execute(sql)
            rows = cursor.fetchall()
            for row in rows:
                bs = BacSi.BacSi(row[0], row[1], row[2])
                doctors.append(bs)
            # Close connection
        except Exception as e:
            print(e)
        finally:
            MSSQLConnection.MSSQLConnection.close_connection()
            return doctors

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
            sql = "delete from tb_BacSi where id= " + str(id)
            cursor.execute(sql)
            connection.commit()
            print("Delete completely with id: ", id)
        except Exception as e:
            print(e)
        finally:
            MSSQLConnection.MSSQLConnection.close_connection()

    def update(self, bs):
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver, 
                                                                 dbconfig.server, 
                                                                 dbconfig.database, 
                                                                 dbconfig.username, 
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = 'update tb_BacSi set HoTenBacSi = \'{0}\', HinhChuKy = \'{1}\'  where id = {2}'.format(bs.gethoten(),
                                                                                                         bs.getchuky(),
                                                                                                         bs.getid())
            cursor.execute(sql)
            connection.commit()

        except Exception as e:
            print(e)
        finally:
            MSSQLConnection.MSSQLConnection.close_connection()

    def insert(self, bs):
        try:
            # Create connection
            connection = MSSQLConnection.MSSQLConnection.connect(dbconfig.driver, 
                                                                 dbconfig.server, 
                                                                 dbconfig.database, 
                                                                 dbconfig.username, 
                                                                 dbconfig.password)
            cursor = connection.cursor()
            # Execute custom query
            sql = 'insert into tb_BacSi(HoTenBacSi,HinhChuKy) values (\'{0}\',\'{1}\')'.format(bs.gethoten(),
                                                                                               bs.getchuky())
            cursor.execute(sql)
            connection.commit()
        except Exception as e:
            print(e)
        finally:
            MSSQLConnection.MSSQLConnection.close_connection()


if __name__ == '__main__':
    doctordao = DoctorDao()

    # doctordao.delete(20)
    drdanh = BacSi.BacSi("3042", "Danh", "DanhTC")
    doctordao.insert(drdanh)
    for bs in doctordao.queryalldoctors():
        print(bs)
