utkrist@NONE-KNOWN ~]$ sudo mariadb
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 17
Server version: 12.3.2-MariaDB Arch Linux

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> C^C
MariaDB [(none)]> EXIT
Bye
[utkrist@NONE-KNOWN ~]$ sudo mariadb
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 18
Server version: 12.3.2-MariaDB Arch Linux

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> CREATE DATABASE temp1;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> CREATE DATABASE temp2;
Query OK, 1 row affected (0.000 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| myDB               |
| mysql              |
| performance_schema |
| school             |
| sys                |
| temp1              |
| temp2              |
| testdb             |
+--------------------+
9 rows in set (0.001 sec)

MariaDB [(none)]>  USE temp1;
Database changed
MariaDB [temp1]> SHOW TABLES;
Empty set (0.001 sec)

MariaDB [temp1]> DESC students;
ERROR 1146 (42S02): Table 'temp1.students' doesn't exist
MariaDB [temp1]> DROP DATABASE temp1;
Query OK, 0 rows affected (0.009 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| myDB               |
| mysql              |
| performance_schema |
| school             |
| sys                |
| temp2              |
| testdb             |
+--------------------+
8 rows in set (0.001 sec)

MariaDB [(none)]> DROP DATABASE temp2;
Query OK, 0 rows affected (0.017 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| myDB               |
| mysql              |
| performance_schema |
| school             |
| sys                |
| testdb             |
+--------------------+
7 rows in set (0.001 sec)

MariaDB [(none)]> create database college;
Query OK, 1 row affected (0.001 sec)

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

MariaDB [(none)]> use college;
Database changed
MariaDB [college]> create table college(
    -> id INT PRIMARY KEY,
    -> NAME VARCHAR(50),
    -> AGE INT NOT NULL);
Query OK, 0 rows affected (0.024 sec)

MariaDB [college]> SHOW TABLES
    -> 1
    -> NAME
    -> ^C
    -> DROP DATABASE COLLEGE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '1
NAME
DROP DATABASE COLLEGE' at line 2
MariaDB [college]> SHOW DTABASES
    -> ESC
    -> EXIT


ERROR: Usage: \C charset_name | charset charset_name
    -> \c
MariaDB [college]> \c
MariaDB [college]> EXIT;
Bye
[utkrist@NONE-KNOWN ~]$ mariadb
ERROR 1698 (28000): Access denied for user 'utkrist'@'localhost'
[utkrist@NONE-KNOWN ~]$ sudo mariadb
[sudo] password for utkrist: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 21
Server version: 12.3.2-MariaDB Arch Linux

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
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

MariaDB [(none)]> use college
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [college]> CREATE TABLE student(
    -> id INT PRIMARY KEY,
    -> name VARCHAR(50),
    -> AGE INT NOT NULL );
Query OK, 0 rows affected (0.023 sec)

MariaDB [college]> DESc student
    -> \c
MariaDB [college]> DESC student
    -> \c
MariaDB [college]> show tables
    -> \c
MariaDB [college]> SHOW TABLES;
+-------------------+
| Tables_in_college |
+-------------------+
| college           |
| student           |
+-------------------+
2 rows in set (0.001 sec)

MariaDB [college]> DESC student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(11)     | NO   | PRI | NULL    |       |
| name  | varchar(50) | YES  |     | NULL    |       |
| AGE   | int(11)     | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.001 sec)

MariaDB [college]> SELECT * FROM student; 
Empty set (0.001 sec)

MariaDB [college]> DROP TABLE college;
Query OK, 0 rows affected (0.012 sec)

MariaDB [college]> SHOw tabLES;
+-------------------+
| Tables_in_college |
+-------------------+
| student           |
+-------------------+
1 row in set (0.001 sec)

MariaDB [college]>  INSERT INTO student VALUES(1, "UTKRIST",18);
Query OK, 1 row affected (0.006 sec)

MariaDB [college]>  INSERT INTO student VALUES(1, AMAN",16);
    "> \c
    "> \c
    "> \c
    "> \C
    "> INSERT INTO student VALUES(2, "AMAN", 16);
    "> ^C
    "> ^C
    "> ^C
    "> ^C
    "> \C
    "> \c
    "> /c
    "> \c
    "> SHOW TABLES;
    "> "
    -> ^C
    -> \c
MariaDB [college]> INSERT INTO student VALUES(2, "SANDESH",20);
Query OK, 1 row affected (0.014 sec)

MariaDB [college]> INSET INTO student VALUES(3, "MALLI",19);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INSET INTO student VALUES(3, "MALLI",19)' at line 1
MariaDB [college]> INSERT INTO student VALUES(3, "MALLI",19);
Query OK, 1 row affected (0.014 sec)

MariaDB [college]> Show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| student           |
+-------------------+
1 row in set (0.001 sec)

MariaDB [college]> DESC student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
MariaDB [college]> drop databse IF EXISTS university;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'databse IF EXISTS university' at line 1
MariaDB [college]> show databases;
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
8 rows in set (0.006 sec)

MariaDB [college]> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| student           |
+-------------------+
1 row in set (0.000 sec)

MariaDB [college]> drop databse IF EXISTS university;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'databse IF EXISTS university' at line 1
MariaDB [college]> 




















