# mysql with django installation steps
source : https://www.starwindsoftware.com/blog/how-to-install-django-on-ubuntu-server-18-04-lts-part-2-configuring-django-to-use-mysql-database

1. sudo apt-get install -y mysql-server
2. sudo apt-get install -y mysql-workbench (optional msqyl gui)
3. sudo mysql -u root -p (set mysql user password , 3 & 4)
4. ALTER USER ´root´@’localhost’ IDENTIFIED WITH mysql_native_password BY ‘any password’
5. activate environment
6. pip install django (install django)
7. django-admin startproject mysql_sample_project (create django project)
8. sudo apt-get install -y libmysqlclient-dev (install libmysqlclient-dev for mysqlclient)
9. pip install mysqlclient (install mysqlclient because it is required by django)
10. systemctl status mysql.service (check mysql service is running or not)
11. mysql -u root -p (connect to database)
12. show databases;
13. CREATE DATABASE sample_django_project CHARACTER SET utf8; (create database and should be in 	utf8 because django demands utf8)
14. go to your django project folder and settings.py file.
15. replace this information . DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'OPTIONS': {
            'read_default_file': '/etc/mysql/my.cnf',
        },
	    }
		}

16. go to /etc/mysql/my.cnf
17. add this
	[client]
	database = sample_django_project
	user = root
	password = password
	default-character-set = utf8
18. systemctl daemon-reload
19. systemctl restart mysql
20. python manage.py makemigrations
21. python manage.py migrate
