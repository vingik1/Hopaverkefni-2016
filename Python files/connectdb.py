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
def get_employees(index):
    cur.execute("SELECT firstName as 'First Name', JobTitle as 'Job' FROM employeesregistration LIMIT " + str(index) + ",12")

    return cur


def count_employees():
    cur.execute("SELECT COUNT(EmployeeNumber) as 'E' FROM employeesregistration")

    return cur.fetchone()
