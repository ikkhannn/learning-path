# INSTALL MICROSOFT SQL SERVER WITH DJANGO IN UBUNTU

##### source : https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-ver15
1. wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add - (import public repository gpg keys)

2. sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/18.04/mssql-server-2019.list)"

3. sudo apt-get update
4. sudo apt-get install -y mssql-server
5. sudo /opt/mssql/bin/mssql-conf setup
6. systemctl status mssql-server --no-pager (verify that the service is running)
sudo apt-get install curl -y
7. curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
8. curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
9. sudo apt-get update 
10. sudo apt-get install mssql-tools unixodbc-dev

11. echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
12. echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
13. source ~/.bashrc
Then follow this -> https://docs.microsoft.com/en-us/sql/connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server?view=sql-server-ver15#ubuntu17
14. sqlcmd -S localhost -U SA -P '<YourPassword>' (login to sqlcmd)
15. CREATE DATABASE sample_django_database (create database)
16. SELECT Name from sys.Databases (lists all databases)
17. USE sample_django_database (switch to database)
18. pip install django-pyodbc-azure
19. pip install django-mssql-backend
20. use these settings DATABASES = {
    'default': {
        'ENGINE': 'sql_server.pyodbc',
        'NAME': 'sample_django_database',
        'USER': 'sa',
        'PASSWORD': 'your password',
        'HOST': 'mypc', (check it like this, SELECT HOST_NAME())
        'PORT': 1433,
        'OPTIONS': {
            'driver': 'ODBC Driver 17 for SQL Server',
        },
    },
}


