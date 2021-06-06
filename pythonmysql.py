#pip install mysql-connector-python
import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="secret",
    database="mytestdb"
)

mycursor=mydb.cursor()

# mycursor.execute("CREATE DATABASE mytestdb")

# mycursor.execute("SHOW DATABASES")
# for x in mycursor:
#     print(x)

#mycursor.execute("CREATE TABLE employees (name varchar(30), addr varchar(30))")

# mycursor.execute("SHOW TABLES")
# for x in mycursor:
#     print(x)

# mycursor.execute("ALTER TABLE employees ADD COLUMN id int AUTO_INCREMENT PRIMARY KEY")


# sql="INSERT INTO employees (name,addr) VALUES (%s,%s)"
# val=("Hari","Chennai")
#for multiple data entries, 
# val=[('Vijay','Kanyakumari'),('Rama','Kumbakonam')]

# mycursor.execute(sql,val) for single value entry
# mycursor.executemany(sql,val) for multivalue entry

# mydb.commit()
# print(mycursor.rowcount,"record inserted.")


# mycursor.execute("SELECT * FROM employees")
# result= mycursor.fetchall()  -->result is a list of tuples
# print(result)

# for x in result:
#     print(x)

# print(mycursor.fetchone()) -->for one row alone


# mycursor.execute("SELECT name FROM employees WHERE addr='Chennai'")
# result= mycursor.fetchall()

# for x in result:
#     print(x)


# mycursor.execute("SELECT name FROM employees WHERE addr LIKE '%en%'")
# result= mycursor.fetchall()

# for x in result:
#    print(x)



# mycursor.execute("DELETE FROM employees WHERE addr='kanyakumari'")

# mydb.commit()

# print(mycursor.rowcount,"record deleted")


#mycursor.execute("DROP TABLE employer")


# mycursor.execute("UPDATE employees SET addr ='Coimbatore' WHERE name='Rama'")

# mydb.commit()

# print(mycursor.rowcount,"records updated")


# mycursor.execute("SELECT * FROM employees LIMIT 1 OFFSET 1")

# result= mycursor.fetchall()

# for x in result:
#     print(x)
    
# sql="INSERT INTO employees (name,addr) VALUES (%s,%s)"
# val=("Hari","Chennai")
nam="Ra"
val=nam + "%"  
print(val)  
mycursor.execute(f"SELECT * FROM employees WHERE name LIKE '{val}'")
mycursor.execute("SELECT * FROM employees WHERE name LIKE '%s'" %(val))
result= mycursor.fetchall()

for x in result:
    print(x)


