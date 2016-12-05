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
    cur.execute("SELECT firstName as 'First Name', JobTitle as 'Job', EmployeeNumber FROM employeesregistration LIMIT " + str(index) + ",12")

    return cur


def count_employees():
    cur.execute("SELECT COUNT(EmployeeNumber) as 'E' FROM employeesregistration")

    return cur.fetchone()


def remove_employee(empl_num):
    cur.execute("call RemoveEmployee('" + str(empl_num) + "')")


def create_employee(e_number, f_name, l_name, b_date, country, j_title):
    cur.execute("call AddEmployee('" + str(e_number) + "', '" + str(f_name) + "', '" + str(l_name) + "', '" + str(b_date) + "', '" + str(country) + "', '" + str(j_title) + "')")


def get_single_employee(empl_num):
    cur.execute("SELECT * FROM `employeesregistration` WHERE EmployeeNumber = '" + empl_num + "'")

    return cur
