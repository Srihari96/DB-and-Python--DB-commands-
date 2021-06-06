show databases;
exit;
mysql -u root -p
CREATE DATABASE testDB; 
DROP DATABASE testDB;
use testDB;
show tables;
CREATE TABLE USER (username varchar(30),password varchar(30));
INSERT INTO USER VALUES('srihari','1234');
SELECT * FROM USER;
SELECT password FROM USER WHERE username='srihari';
INSERT INTO data VALUES('ronaldo','potugal','juventus');
SELECT name FROM data WHERE club='barca' AND country='argentina';
UPDATE data SET country='portugal' WHERE name='ronaldo';
SELECT name FROM data WHERE club='barca' OR country='portugal';
SELECT name FROM data WHERE NOT club='barca';
SELECT * FROM data ORDER BY country DESC;
INSERT INTO data (name,club) VALUES ('neymar','PSG');
SELECT * FROM data WHERE country IS NULL;
DELETE FROM data WHERE club='PSG';
SELECT * FROM data DESC LIMIT 2;
INSERT INTO accounts VALUES(2,20000,3,34000); -- inserting multiple values
SELECT MIN(salary) FROM accounts;
SELECT COUNT(id) FROM accounts;
SELECT AVG(salary) FROM accounts;
SELECT SUM(salary) FROM accounts;
SELECT * FROM data WHERE country LIKE '%l';
SELECT * FROM data WHERE country LIKE 'po%';
SELECT * FROM data WHERE country IN ('portugal','argentina','brazil');
SELECT * FROM accounts WHERE salary BETWEEN 20000 AND 30000;
CREATE TABLE employees (id int, name varchar(30), contact varchar(20));
SELECT employees.name, accounts.salary FROM employees INNER JOIN accounts ON employees.id=accounts.id;
SELECT employees.name, accounts.salary FROM employees LEFT JOIN accounts ON employees.id=accounts.id ORDER BY accounts.salary DESC;
ALTER TABLE employees ADD employee_id int;
ALTER TABLE person RENAME TO persons;
ALTER TABLE accounts DROP COLUMN id;
ALTER TABLE accounts MODIFY salary int NOT NULL ;
ALTER TABLE accounts MODIFY COLUMN employee_id int UNIQUE ;
CREATE TABLE employeedata (id int AUTO_INCREMENT PRIMARY KEY, employee_id int NOT NULL,name varchar(30));
ALTER TABLE accounts ALTER salary SET DEFAULT 20000;
ALTER TABLE orders ADD CHECK (ordernumber>1 AND ordernumber<50);
CREATE UNIQUE INDEX idx_salary ON accounts(salary);
CREATE TABLE person (personid int NOT NULL AUTO_INCREMENT,personname varchar(30) NOT NULL, age int NOT NULL, PRIMARY KEY(personid));
CREATE TABLE orders (orderid int NOT NULL AUTO_INCREMENT,ordernumber int NOT NULL,personid int,PRIMARY KEY(orderid),FOREIGN KEY(personid) REFERENCES person(personid));
ALTER TABLE orders MODIFY COLUMN orderdate TIMESTAMP;
SELECT orders.ordernumber, person.personname, orders.orderdate FROM orders INNER JOIN person ON orders.personid=person.personid;
SELECT orders.ordernumber, person.personname, orders.orderdate FROM orders LEFT JOIN person ON orders.personid=person.personid;
SELECT orders.ordernumber, person.personname, person.age FROM orders RIGHT JOIN person ON person.personid=orders.personid;
SELECT employeedata.name FROM employeedata UNION SELECT person.personname FROM person;
SELECT COUNT(personid), age FROM person GROUP BY age ORDER BY COUNT(personid) DESC; -->used for generating no of occurences
SELECT COUNT(personid), age FROM person GROUP BY age HAVING COUNT(personid)>1 ORDER BY COUNT(personid) DESC; -->having lets you filter using aggregate funcs(avg,count,sum)
SELECT personname FROM person WHERE EXISTS(SELECT ordernumber FROM orders WHERE person.personid=orders.personid);
CREATE TABLE orderbackup SELECT * FROM orders; -->table backup
INSERT INTO orderbackup(ordernumber,personid) SELECT salary,employee_id FROM accounts; -->copying data from one table to other
SELECT salary,employee_id, CASE WHEN salary<=20000 THEN 'low salary' WHEN salary>100000 THEN 'high salary' ELSE 'Moderate salary' END AS salarytype FROM accounts;
CREATE TABLE samples (id int NOT NULL AUTO_INCREMENT,name varchar(23) NOT NULL,age int, sample_id int NOT NULL, CONSTRAINT pk_sample PRIMARY KEY (id,sample_id));
























