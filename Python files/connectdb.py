import MySQLdb

# INFO TO CONNECT TO DB
host = "tsuts.tskoli.is"    # Host
user = "3006962289"         # Username
passwd = "mypassword"       # Password
db = "3006962289_FreshAir"  # Database Name

# CONNECT TO DATABASE
db = MySQLdb.connect(host=host,
                     user=user,
                     passwd=passwd,
                     db=db)
# CREATE A CURSOR
cur = db.cursor()


# SQL COMMANDS

# Get All employees
def get_employees(index):
    cur.execute("SELECT firstName as 'First Name', JobTitle as 'Job', EmployeeNumber FROM employeesregistration LIMIT " + str(index) + ",12")

    return cur


# Count all employees
def count_employees():
    cur.execute("SELECT COUNT(EmployeeNumber) as 'E' FROM employeesregistration")

    return cur.fetchone()


# Remove selected employee
def remove_employee(empl_num):
    cur.execute("call RemoveEmployee('" + str(empl_num) + "')")


# Create a new employee
def create_employee(e_number, f_name, l_name, b_date, country, j_title):
    cur.execute("call AddEmployee('" + str(e_number) + "', '" + str(f_name) + "', '" + str(l_name) + "', '" + str(b_date) + "', '" + str(country) + "', '" + str(j_title) + "')")


# Get a selected employee
def get_single_employee(empl_num):
    cur.execute("SELECT * FROM `employeesregistration` WHERE EmployeeNumber = '" + empl_num + "'")

    return cur
