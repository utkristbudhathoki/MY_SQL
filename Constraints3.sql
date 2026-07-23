[utkrist@NONE-KNOWN ~]$ sudo mariadb
[sudo] password for utkrist: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 12.3.2-MariaDB Arch Linux

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> -- CONSTRAINTS
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
9 rows in set (0.006 sec)

MariaDB [(none)]> USE UT_COMPANY;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [UT_COMPANY]> CREATE TABLE temp1 (;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [UT_COMPANY]> CREATE TABLE temp1 (
    -> id INT UNIQUE
    -> );
Query OK, 0 rows affected (0.023 sec)

MariaDB [UT_COMPANY]> INSERT INTO temp1 VALUES(101);
Query OK, 1 row affected (0.008 sec)

MariaDB [UT_COMPANY]> INSERT INTO temp1 VALUES(101);
ERROR 1062 (23000): Duplicate entry '101' for key 'id'
MariaDB [UT_COMPANY]> SELECT * FROM temp1;
+------+
| id   |
+------+
|  101 |
+------+
1 row in set (0.000 sec)

MariaDB [UT_COMPANY]> INSERT INTO temp1 VALUES(102);
Query OK, 1 row affected (0.014 sec)

MariaDB [UT_COMPANY]> SELECT * FROM temp1;
+------+
| id   |
+------+
|  101 |
|  102 |
+------+
2 rows in set (0.000 sec)

MariaDB [UT_COMPANY]> INSERT INTO temp1 VALUES(102);
ERROR 1062 (23000): Duplicate entry '102' for key 'id'
MariaDB [UT_COMPANY]> -- ---------NOW USING DEFAULT CONSTRAINTS------------
MariaDB [UT_COMPANY]> DESC UT_COMPANY;
ERROR 1146 (42S02): Table 'UT_COMPANY.UT_COMPANY' doesn't exist
MariaDB [UT_COMPANY]> SHOW TABLES;
+----------------------+
| Tables_in_UT_COMPANY |
+----------------------+
| Employee_info        |
| temp1                |
+----------------------+
2 rows in set (0.001 sec)

MariaDB [UT_COMPANY]> DESC Employee_info;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int(11)     | NO   | PRI | NULL    |       |
| name   | varchar(40) | YES  |     | NULL    |       |
| salary | float       | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.001 sec)

MariaDB [UT_COMPANY]> CREATE TABLE emp (
    -> id INT PRIMARY KEY,
    -> salary INT DEFAULT 25000);
Query OK, 0 rows affected (0.023 sec)

MariaDB [UT_COMPANY]> DESC emp;
+--------+---------+------+-----+---------+-------+
| Field  | Type    | Null | Key | Default | Extra |
+--------+---------+------+-----+---------+-------+
| id     | int(11) | NO   | PRI | NULL    |       |
| salary | int(11) | YES  |     | 25000   |       |
+--------+---------+------+-----+---------+-------+
2 rows in set (0.002 sec)

MariaDB [UT_COMPANY]> NSERT INTO emp (id)  VALUES (101);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'NSERT INTO emp (id)  VALUES (101)' at line 1
MariaDB [UT_COMPANY]> INSERT INTO emp (id)  VALUES (101);
Query OK, 1 row affected (0.015 sec)

MariaDB [UT_COMPANY]> SELECT * FROM emp;
+-----+--------+
| id  | salary |
+-----+--------+
| 101 |  25000 |
+-----+--------+
1 row in set (0.001 sec)

MariaDB [UT_COMPANY]> exit;
Bye
