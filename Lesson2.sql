[utkrist@NONE-KNOWN ~]$ sudo mariadb
[sudo] password for utkrist: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 23
Server version: 12.3.2-MariaDB Arch Linux

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

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

MariaDB [(none)]> USE college;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [college]> SHOW TABLES;
+-------------------+
| Tables_in_college |
+-------------------+
| student           |
+-------------------+
1 row in set (0.000 sec)

MariaDB [college]> DESC student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(11)     | NO   | PRI | NULL    |       |
| name  | varchar(50) | YES  |     | NULL    |       |
| AGE   | int(11)     | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.001 sec)

MariaDB [college]> -- INSERT COMMAND
MariaDB [college]> CREATE TABLE CLASS;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [college]> SHOW TABLES;
+-------------------+
| Tables_in_college |
+-------------------+
| student           |
+-------------------+
1 row in set (0.001 sec)

MariaDB [college]> SHOW TABLES;
+-------------------+
| Tables_in_college |
+-------------------+
| student           |
+-------------------+
1 row in set (0.001 sec)

MariaDB [college]> CREATE TABLE TEACHER (
    -> t_id INT PRIMARY KEY,
    -> t_name VARCHAR(45)
    -> );
Query OK, 0 rows affected (0.025 sec)

MariaDB [college]> SHOW TABLES;
+-------------------+
| Tables_in_college |
+-------------------+
| TEACHER           |
| student           |
+-------------------+
2 rows in set (0.001 sec)

MariaDB [college]> SELECT FROM * student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM * student' at line 1
MariaDB [college]> SELECT * FROM  student;
+----+---------+-----+
| id | name    | AGE |
+----+---------+-----+
|  1 | UTKRIST |  18 |
|  2 | SANDESH |  20 |
|  3 | MALLI   |  19 |
+----+---------+-----+
3 rows in set (0.001 sec)

MariaDB [college]> -- NOW USING INSERT COMMAND (DML)
MariaDB [college]> DESC TEACHER
    -> DESC TEACHER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DESC TEACHER' at line 2
MariaDB [college]> DESC TEACHER;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| t_id   | int(11)     | NO   | PRI | NULL    |       |
| t_name | varchar(45) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
2 rows in set (0.002 sec)

MariaDB [college]> INSERT INTO TEACHER
    -> (t_id,t_name)
    -> VALUES
    -> (01,"SRG"),
    -> (02,"GRG"),
    -> (03,"FRD"),
    -> (04, "SED");
Query OK, 4 rows affected (0.014 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [college]> DESC TEACHER;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| t_id   | int(11)     | NO   | PRI | NULL    |       |
| t_name | varchar(45) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
2 rows in set (0.001 sec)

MariaDB [college]> SELECT * FROM TEACHER;
+------+--------+
| t_id | t_name |
+------+--------+
|    1 | SRG    |
|    2 | GRG    |
|    3 | FRD    |
|    4 | SED    |
+------+--------+
4 rows in set (0.001 sec)

MariaDB [college]> 
