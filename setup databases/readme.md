## POSTGRESQL INSTALLATION
sudo apt install postgresql postgresql-contrib
## install django
python -m pip install Django (install django)

## start and postgresql server
sudo service postgresql start
sudo service postgresql stop

## configuration
psql -V (check version


We need to switch user to postgre in order to create a new database & a new user attached to the database:

su - postgres
From postgres user let’s create a new database named project (or you may using another name if you wish to do so, but make sure you also adjusted the name in Django database connection setting later):

createdb project

then added a new user named django (or another name) & attached the user to the newly created database:
createuser --interactive --pwprompt

### Grant access for user django to access database project:

psql
GRANT ALL PRIVILEGES ON DATABASE sample_project TO djangouser;

Great we’ve setup the database, let’s get back from user postgres to root by typing from psql console:
\q
exit



### Installing Django 3 & Deployment
pip3 install django
(run pip install wheel in virutal env)
pip3 install psycopg2 (if face errror, install this, sudo apt-get install libpq-dev python-dev)

you can start a new Django project:

django-admin.py startproject myproject



By default, Django is configured to use SQLite as its backend. To use Postgres instead, “myproject/settings.py” needs to be updated:

nce you’ve got things pointed to the Postgres database, you can build the default schema. If you didn’t know already, Django was designed with user access in mind, so by default a Django application will create a database schema involving users, groups, and permissions. To create the schema, generate a migration and run it:

python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver (run django server)



### follow these steps if you get error in logging in postgres account
sudo -u postgres psql (login with os account)
OR
If you are trying to login postgres shell as postgres user, then you can use following commands.
sudo passwd postgres ()
su - postgres
psql





