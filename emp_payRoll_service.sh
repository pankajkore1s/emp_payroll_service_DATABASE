echo"welcome to the Employee Payroll Service Database"

#UC1 Ability to create a payroll service database

mysql> create database employee_payroll_service_db;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+-----------------------------+
| Database                    |
+-----------------------------+
| employee_payroll_service_db |
| information_schema          |
| mysql                       |
| performance_schema          |
+-----------------------------+
4 rows in set (0.00 sec)

mysql> use employee_payroll_service_db;
Database changed
mysql> select database();
+-----------------------------+
| database()                  |
+-----------------------------+
| employee_payroll_service_db |
+-----------------------------+
1 row in set (0.00 sec)


#UC2-Ability to create a employee payroll table in the payroll service database to manage employee payrolls

mysql> create table employee_payroll
    -> (
    -> id          int unsigned not null auto_increment,
    -> name        varchar(150) not null,
    -> salary      double not null,
    -> start       date not null,
    -> primary key (id)
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> describe employee_payroll;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| id     | int unsigned | NO   | PRI | NULL    | auto_increment |
| name   | varchar(150) | NO   |     | NULL    |                |
| salary | double       | NO   |     | NULL    |                |
| start  | date         | NO   |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)


#UC3Ability to create employee
#payroll data in the payroll
#service database as part of
#CRUD Operation

mysql> insert into employee_payroll (name,salary,start) values
    ->  ('Bill',1000000.00,'2018-01-03'),
    -> ('Terisa',2000000.00,'2019-11-13'),
    -> ('Charlie',3000000.00,'2020-05-21');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0


#UC4-Ability to retrieve all the
#employee payroll data that is
#added to payroll service
#database

mysql> select * from employee_payroll;
+----+---------+---------+------------+
| id | name    | salary  | start      |
+----+---------+---------+------------+
|  1 | Bill    | 1000000 | 2018-01-03 |
|  2 | Terisa  | 2000000 | 2019-11-13 |
|  3 | Charlie | 3000000 | 2020-05-21 |
+----+---------+---------+------------+
3 rows in set (0.00 sec)

#UC5-Ability to retrieve salary data for a particular
#employee as well as all employees who have
#joined in a particular data range from the
#payroll service database


mysql> select salary from employee_payroll where name='Bill';
+---------+
| salary  |
+---------+
| 1000000 |
+---------+
1 row in set (0.00 sec)

mysql> select * from employee_payroll
    -> where start between cast('2018-01-01' as date) and date(now());
+----+---------+---------+------------+
| id | name    | salary  | start      |
+----+---------+---------+------------+
|  1 | Bill    | 1000000 | 2018-01-03 |
|  2 | Terisa  | 2000000 | 2019-11-13 |
|  3 | Charlie | 3000000 | 2020-05-21 |
+----+---------+---------+------------+
3 rows in set (0.00 sec)
