import pyodbc


class MSSQLConnection:
    # Static variable
    connection = None

    @classmethod
    def connect(cls, driver, server, database, username, password):
        try:
            connection_string = ('DRIVER={0};SERVER={1};DATABASE={2};UID={3};PWD={4}'.format(driver,
                                                                                             server,
                                                                                             database,
                                                                                             username,
                                                                                             password))
            cls.connection = pyodbc.connect(connection_string)
            print("Connected to the database.")
            return cls.connection
        except Exception as e:
            print('Error in connection: ', e)

    @classmethod
    def close_connection(cls):
        try:
            if cls.connection:
                cls.connection.close()
                print("Connection closed.")
        except Exception as e:
            print('Error in connection: ', e)


if __name__ == '__main__':
    driver = 'SQL Server'
    server = 'DANHTRANCONG'
    database = 'python'
    username = ''
    password = ''
    # Kết nối cơ sở dữ liệu
    #a = MSSQLConnection.connect(driver, server, database, username, password)
