import sqlite3
conn = sqlite3.connect('test.db')
print("SUCCESS")
# conn.execute('CREATE TABLE department(id INT PRIMARY KEY, NAME VARCHAR(30),AGE INT);')
# print("SUCCESS!!!")

# conn.execute("INSERT INTO company (id,name,age) VALUES(1,'HARI',24)");
# conn.commit()

# result = conn.execute("SELECT * FROM company")
# for i in result:
#     print(i)


# conn.execute("UPDATE company set age=23 WHERE id=1")
# conn.commit()
# print(conn.total_changes)


# conn.execute("DELETE FROM company WHERE id=2");
# conn.commit()
# print(conn.total_changes)


conn.close()