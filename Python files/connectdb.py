import MySQLdb

# INFO TO CONNECT TO DB
host = "tsuts.tskoli.is"
user = "3006962289"
passwd = "mypassword"
db = "3006962289_FreshAir"

# CONNECT TO DATABASE
db = MySQLdb.connect(host=host,
                     user=user,
                     passwd=passwd,
                     db=db)
# CREATE A CURSOR
cur = db.cursor()

# RUN AN SQL COMMAND
cur.execute("SELECT * FROM aircrafts")
