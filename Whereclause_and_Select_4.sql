[utkrist@NONE-KNOWN MY SQL]$ sudo mariadb
[sudo] password for utkrist: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 4
Server version: 12.3.2-MariaDB Arch Linux

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

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

MariaDB [(none)]> USE college;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [college]> SHOW TABLES;
+-------------------+
| Tables_in_college |
+-------------------+
| TEACHER           |
| student           |
+-------------------+
2 rows in set (0.001 sec)

MariaDB [college]> SELECT * FROM student;
+----+---------+-----+
| id | name    | AGE |
+----+---------+-----+
|  1 | UTKRIST |  18 |
|  2 | SANDESH |  20 |
|  3 | MALLI   |  19 |
+----+---------+-----+
3 rows in set (0.001 sec)

MariaDB [college]> CREATE TABLE sem_4;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [college]> CREATE TABLE sem_4(
    -> rol_no INT PRIMARY KEY,
    -> name VARCHAR(50),
    -> marks INT NOT NULL,
    -> city VARCHAR(20)
    -> );
Query OK, 0 rows affected (0.022 sec)

MariaDB [college]> DESC sem_4;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rol_no | int(11)     | NO   | PRI | NULL    |       |
| name   | varchar(50) | YES  |     | NULL    |       |
| marks  | int(11)     | NO   |     | NULL    |       |
| city   | varchar(20) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.001 sec)

MariaDB [college]> INSERT INTO sem_4 
    -> (rol_no,name,marks,city)
    -> VALUES
    -> (1,"UTKRIST BUDHATHOKI",99,KATHMANDU),
    -> (2,"RAMESHWOR CHAUDHARY",98,LALITPUR),
    -> (2,"RAMESHWOR CHAUDHARY",98,LALITPUR),^C
    -> ^C
    -> \C
ERROR: Usage: \C charset_name | charset charset_name
    -> \c
MariaDB [college]> DESC sem_4;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rol_no | int(11)     | NO   | PRI | NULL    |       |
| name   | varchar(50) | YES  |     | NULL    |       |
| marks  | int(11)     | NO   |     | NULL    |       |
| city   | varchar(20) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.001 sec)

MariaDB [college]> INSERT INTO sem_4  (rol_no,name,marks,city) VALUES (1,"UTKRIST BUDHATHOKI",99,"KATHMANDU"), (2,"RAMESHWOR CHAUDHARY",98,"LALITPUR"),  
    -> (3,"CHANDAN RUNIYAR",55,"HARION"),
    -> (4,"CHANDAN SHARMA",77"HARION");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '"HARION")' at line 3
MariaDB [college]> INSERT INTO sem_4  (rol_no,name,marks,city) VALUES (1,"UTKRIST BUDHATHOKI",99,"KATHMANDU"), (2,"RAMESHWOR CHAUDHARY",98,"LALITPUR"),   (3,"CHANDAN RUNIYAR",55,"HARION"), (4,"CHANDAN SHARMA",77,"HARION");
Query OK, 4 rows affected (0.014 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [college]> SELECT * FROM sem_4;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    99 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
+--------+---------------------+-------+-----------+
4 rows in set (0.000 sec)

MariaDB [college]> ------USING SELECT CONSTRAINTS : USED TO SELECT ANY DATA FROM THE DATABASE
MariaDB [college]> SELCT name,marks FROM sem_4;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'SELCT name,marks FROM sem_4' at line 1
MariaDB [college]> SELECT name,marks FROM sem_4;
+---------------------+-------+
| name                | marks |
+---------------------+-------+
| UTKRIST BUDHATHOKI  |    99 |
| RAMESHWOR CHAUDHARY |    98 |
| CHANDAN RUNIYAR     |    55 |
| CHANDAN SHARMA      |    77 |
+---------------------+-------+
4 rows in set (0.000 sec)

MariaDB [college]> ---- AND TO SELCT ALL FROM TABLE ----------
MariaDB [college]> SELECT * FROM sem_4;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    99 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
+--------+---------------------+-------+-----------+
4 rows in set (0.001 sec)

MariaDB [college]> --- DISTINCT IS USED TO SELECT UNIQUE VALUES 
MariaDB [college]> SELECT DISTINCT city FROM sem_4;
+-----------+
| city      |
+-----------+
| KATHMANDU |
| LALITPUR  |
| HARION    |
+-----------+
3 rows in set (0.001 sec)

MariaDB [college]> SELECT DISTINCT marks FROM sem_4;
+-------+
| marks |
+-------+
|    99 |
|    98 |
|    55 |
|    77 |
+-------+
4 rows in set (0.001 sec)

MariaDB [college]> --- DISTINCT DOESN'T ALLOW TO SELECT DUPLICATE VALUES. IT SELECT ONE VALUES FROM DUPLICATES
MariaDB [college]> --   WHERE CLAUSE ----
MariaDB [college]> --- WHERE CLAUSE IS USED TO DEFINE SOME CONDITIONS -----
MariaDB [college]>  SELECT name,marks, FROM sem_4 WHERE 
    -> marks >= 90;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM sem_4 WHERE 
marks >= 90' at line 1
MariaDB [college]> SELECT name,marks, FROM sem_4 WHERE  marks >= 90;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM sem_4 WHERE  marks >= 90' at line 1
MariaDB [college]> SELECT name,marks FROM sem_4 WHERE  marks >= 90;
+---------------------+-------+
| name                | marks |
+---------------------+-------+
| UTKRIST BUDHATHOKI  |    99 |
| RAMESHWOR CHAUDHARY |    98 |
+---------------------+-------+
2 rows in set (0.001 sec)

MariaDB [college]> SELECT *  FROM sem_4 WHERE city = "HARION"
    -> \c
MariaDB [college]> SELECT *  FROM sem_4 WHERE city = "HARION";
+--------+-----------------+-------+--------+
| rol_no | name            | marks | city   |
+--------+-----------------+-------+--------+
|      3 | CHANDAN RUNIYAR |    55 | HARION |
|      4 | CHANDAN SHARMA  |    77 | HARION |
+--------+-----------------+-------+--------+
2 rows in set (0.001 sec)

MariaDB [college]> SELECT *  FROM sem_4 WHERE city = "HAR";
Empty set (0.001 sec)

MariaDB [college]> SELECT *  FROM sem_4 WHERE city = "HARION" AND marks > 70;
+--------+----------------+-------+--------+
| rol_no | name           | marks | city   |
+--------+----------------+-------+--------+
|      4 | CHANDAN SHARMA |    77 | HARION |
+--------+----------------+-------+--------+
1 row in set (0.001 sec)

MariaDB [college]> 
