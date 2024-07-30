from app import app
from flaskext.mysql import MySQL 
mysql = MySQL()
 
# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'rubens'
app.config['MYSQL_DATABASE_PASSWORD'] = '913328'
app.config['MYSQL_DATABASE_DB'] = 'draftdatabase'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)