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
