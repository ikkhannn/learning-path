1. sudo apt install mongodb 
2. sudo systemctl start mongodb
3. sudo systemctl stop mongodb
4. sudo systemctl restart mongodb
5. Install compass (GUI interface)
6. pip install djongo
7. mongo (type in terminal)
8. use databasename
8. db.new_collection.insert({ some_key: "some_value" }) (create database in mongo shell by)
9. show dbs (lists all databases)
10. show collections ( lists all collections in a db)
11. db.createUser({user:"username",pwd:"password",roles:[{role:"userAdminAnyDatabase", db:"admin"}]}) (this will create a user which will have the rights to use all database)

12. go to settings.py
13. DATABASES = {
   ‘default’: {
      ‘ENGINE’: ‘djongo’,
      ‘NAME’: ‘your-db-name’,
      'host': 'localhost',(optional)
      'port': 27017,(optional)
      'username': 'user_name',
      'password': 'password',
    	}
	}
14. python manage.py migrate
