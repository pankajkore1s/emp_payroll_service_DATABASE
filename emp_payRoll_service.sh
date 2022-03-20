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
