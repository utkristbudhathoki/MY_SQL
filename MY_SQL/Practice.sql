MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| college            |
| information_schema |
| myDB               |
| mysql              |
| performance_schema |
| school             |
| sys                |
| testdb             |
+--------------------+
8 rows in set (0.001 sec)

MariaDB [(none)]> CREATE DATABASE UT_COMPANY;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| UT_COMPANY         |
| college            |
| information_schema |
| myDB               |
| mysql              |
| performance_schema |
| school             |
| sys                |
| testdb             |
+--------------------+
9 rows in set (0.001 sec)

MariaDB [(none)]> USE UT_COMPANY;
Database changed
MariaDB [UT_COMPANY]> CREATE TABLE Employee_info(
    -> id INT PRIMARY KEY,
    -> name VARCHAR(40),
    -> salary FLOAT
    -> );
Query OK, 0 rows affected (0.025 sec)

MariaDB [UT_COMPANY]> SHOW TABLES;
+----------------------+
| Tables_in_UT_COMPANY |
+----------------------+
| Employee_info        |
+----------------------+
1 row in set (0.001 sec)

MariaDB [UT_COMPANY]> DESC Employee_info;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int(11)     | NO   | PRI | NULL    |       |
| name   | varchar(40) | YES  |     | NULL    |       |
| salary | float       | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.001 sec)

MariaDB [UT_COMPANY]> -- NOW WE ARE USING INSERT COMMAND [DML(TYPES_OF_SQL_COMMAND)]
MariaDB [UT_COMPANY]> INSERT INTO Employee_info
    -> (id,name,salary)
    -> VALUES
    -> (01,"adam",25000),
    -> (02,"bob",30000),
    -> (03,"casey",40000);
Query OK, 3 rows affected (0.014 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [UT_COMPANY]> -- TO VIEW THE TABLE
MariaDB [UT_COMPANY]> SELECT * FROM Employee_info;
+----+-------+--------+
| id | name  | salary |
+----+-------+--------+
|  1 | adam  |  25000 |
|  2 | bob   |  30000 |
|  3 | casey |  40000 |
+----+-------+--------+
3 rows in set (0.001 sec)

MariaDB [UT_COMPANY]> 
