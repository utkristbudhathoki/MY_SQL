                  -`                     utkrist@NONE-KNOWN
                 .o+`                    ------------------
                `ooo/                    OS: Arch Linux x86_64
               `+oooo:                   Kernel: Linux 7.1.4-arch1-1
              `+oooooo:                  Uptime: 1 hour, 44 mins
              -+oooooo+:                 Packages: 1012 (pacman)
            `/:-:++oooo+:                Shell: bash 5.3.15
           `/++++/+++++++:               CPU: 11th Gen Intel(R) Core(TM) i5-1135G7 (8) @ 4.20 GHz
          `/++++++++++++++:              GPU: Intel Iris Xe Graphics @ 1.30 GHz [Integrated]
         `/+++ooooooooooooo/`            Memory: 3.01 GiB / 7.48 GiB (40%)
        ./ooosssso++osssssso+`
       .oossssso-````/ossssss+`
      -osssssso.      :ssssssso.
     :osssssss/        osssso+++.
    /ossssssss/        +ssssooo/-
  `/ossssso+/:-        -:/+osssso+-
 `+sso+:-`                 `.-/+oso:
`++:.                           `-/+/
.`                                 `/
[utkrist@NONE-KNOWN ~]$ sudo mariadb
[sudo] password for utkrist: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
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
9 rows in set (0.006 sec)

MariaDB [(none)]> USE collEGE;
ERROR 1049 (42000): Unknown database 'collEGE'
MariaDB [(none)]> USE college;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [college]> SHOW TABLES;
+-------------------+
| Tables_in_college |
+-------------------+
| TEACHER           |
| sem_4             |
| student           |
+-------------------+
3 rows in set (0.001 sec)

MariaDB [college]> USE sem_4;
ERROR 1049 (42000): Unknown database 'sem_4'
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

MariaDB [college]> SELECT * FROM sem_4;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    99 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
+--------+---------------------+-------+-----------+
4 rows in set (0.002 sec)

MariaDB [college]> -- <--------USING OPERATORS IN WHERE CLAUSE------------>
MariaDB [college]> SELECT * FROM 
    -> sem_4
    -> WHERE MARKS >= 90;0
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    99 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
+--------+---------------------+-------+-----------+
2 rows in set (0.001 sec)

    -> SELECT * FROM  sem_4 WHERE MARKS !=  99;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '0
SELECT * FROM  sem_4 WHERE MARKS !=  99' at line 1
MariaDB [college]>  SELECT * FROM  sem_4 WHERE marks !=  99;
+--------+---------------------+-------+----------+
| rol_no | name                | marks | city     |
+--------+---------------------+-------+----------+
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR |
|      3 | CHANDAN RUNIYAR     |    55 | HARION   |
|      4 | CHANDAN SHARMA      |    77 | HARION   |
+--------+---------------------+-------+----------+
3 rows in set (0.001 sec)

MariaDB [college]> -- <--------AND OPERATOR-------->
MariaDB [college]> SELECT * FROM sem_4 WHERE MARKS > 80 and city = "harioN" ;
Empty set (0.001 sec)

MariaDB [college]> SELECT * FROM sem_4 WHERE MARKS > 80 and city = "LALitpur" ;
+--------+---------------------+-------+----------+
| rol_no | name                | marks | city     |
+--------+---------------------+-------+----------+
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR |
+--------+---------------------+-------+----------+
1 row in set (0.001 sec)

MariaDB [college]> INSERT INTO sem_4 
    -> rol_no,name,marks,city
    -> VALUES
    -> (5,"KUSAL DUWAL",38,"BHAKTAPUR");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'rol_no,name,marks,city
VALUES
(5,"KUSAL DUWAL",38,"BHAKTAPUR")' at line 2
MariaDB [college]> INSERT INTO sem_4  (rol_no,name,marks,city) VALUES (5,"KUSAL DUWAL",38,"BHAKTAPUR");
Query OK, 1 row affected (0.015 sec)

MariaDB [college]> INSERT INTO sem_4  (rol_no,name,marks,city) VALUES (5,"KUSAL DUWAL",38,"BHAKTAPUR")
    -> ;
ERROR 1062 (23000): Duplicate entry '5' for key 'PRIMARY'
MariaDB [college]> INSERT INTO sem_4  (rol_no,name,marks,city) VALUES
    -> (6,"DIPESH THAPA",65,"LALITPUR"),
    -> (7,"MALLI SHRESTHA",02,"IMADOL");
Query OK, 2 rows affected (0.014 sec)
Records: 2  Duplicates: 0  Warnings: 0

MariaDB [college]> SELECT * FROM sem_4;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    99 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      6 | DIPESH THAPA        |    65 | LALITPUR  |
|      7 | MALLI SHRESTHA      |     2 | IMADOL    |
+--------+---------------------+-------+-----------+
7 rows in set (0.001 sec)

MariaDB [college]> -- <---------LOGICAL OR OPERATOR WITH WHERE CLAUSE------->
MariaDB [college]> SELECT * FROM SEM_4 WHERE marks > 80 OR CITY = "LALITPUR";
ERROR 1146 (42S02): Table 'college.SEM_4' doesn't exist
MariaDB [college]> SELECT * FROM sem_4 WHERE marks > 80 OR CITY = "LALITPUR";
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    99 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
|      6 | DIPESH THAPA        |    65 | LALITPUR  |
+--------+---------------------+-------+-----------+
3 rows in set (0.001 sec)

MariaDB [college]> -- <------BETWEEN OPERATOR ------>
MariaDB [college]> SELECT * FROM sem_4 WHERE marks BETWEEN 80 AND 90;
Empty set (0.001 sec)

MariaDB [college]> SELECT * FROM sem_4 WHERE marks BETWEEN 80 AND 99;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    99 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
+--------+---------------------+-------+-----------+
2 rows in set (0.001 sec)

MariaDB [college]> SELECT * FROM sem_4 WHERE marks BETWEEN 80 OR  99;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'OR  99' at line 1
MariaDB [college]> -- <--------IN OPERAOT-------->
MariaDB [college]> SELECT * FROM sem_4 WHERE city IN ("HARION","KATHMANDU");
+--------+--------------------+-------+-----------+
| rol_no | name               | marks | city      |
+--------+--------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI |    99 | KATHMANDU |
|      3 | CHANDAN RUNIYAR    |    55 | HARION    |
|      4 | CHANDAN SHARMA     |    77 | HARION    |
+--------+--------------------+-------+-----------+
3 rows in set (0.001 sec)

MariaDB [college]> -- <----------NOT OPERATOR------->
MariaDB [college]> SELECT * FROM sem_4 WHERE city NOT IN ("HARION","KATHMANDU");
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      6 | DIPESH THAPA        |    65 | LALITPUR  |
|      7 | MALLI SHRESTHA      |     2 | IMADOL    |
+--------+---------------------+-------+-----------+
4 rows in set (0.001 sec)

MariaDB [college]> SELECT * FROM sem_4 WHERE city NOT = ("HARION","KATHMANDU");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '= ("HARION","KATHMANDU")' at line 1
MariaDB [college]> SELECT * FROM sem_4
    -> WHERE name NOT LIKE 'A%';
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    99 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      6 | DIPESH THAPA        |    65 | LALITPUR  |
|      7 | MALLI SHRESTHA      |     2 | IMADOL    |
+--------+---------------------+-------+-----------+
7 rows in set (0.001 sec)

MariaDB [college]> -- <--------%A = show students whose name do not start with A-------------->
MariaDB [college]> SELECT * FROM sem_4 WHERE city NOT IN ("HARION","KATHMANDU");
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      6 | DIPESH THAPA        |    65 | LALITPUR  |
|      7 | MALLI SHRESTHA      |     2 | IMADOL    |
+--------+---------------------+-------+-----------+
4 rows in set (0.001 sec)

MariaDB [college]> -- <-----LIMIT CLAUSE(Sets an upper limit on number of (tuples)rows to be returned ----->
MariaDB [college]> SELECT * FROM student LIMIT 3;
+----+---------+-----+
| id | name    | AGE |
+----+---------+-----+
|  1 | UTKRIST |  18 |
|  2 | SANDESH |  20 |
|  3 | MALLI   |  19 |
+----+---------+-----+
3 rows in set (0.001 sec)

MariaDB [college]> SELECT * FROM SEM_4 LIMIT 3;
ERROR 1146 (42S02): Table 'college.SEM_4' doesn't exist
MariaDB [college]> SELECT * FROM sem_4 LIMIT 3;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    99 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
+--------+---------------------+-------+-----------+
3 rows in set (0.001 sec)

MariaDB [college]> SELECT name,marks FROM WHERE marks >75  sem_4 LIMIT 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'WHERE marks >75  sem_4 LIMIT 3' at line 1
MariaDB [college]> SELECT name  FROM  sem_4 WHERE marks >75  sem_4 LIMIT 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'sem_4 LIMIT 3' at line 1
MariaDB [college]> SELECT name,marks  FROM  sem_4 WHERE marks >75  sem_4 LIMIT 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'sem_4 LIMIT 3' at line 1
MariaDB [college]> SELECT marks  FROM  sem_4 WHERE marks > 75  sem_4 LIMIT 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'sem_4 LIMIT 3' at line 1
MariaDB [college]> SELECT *  FROM  sem_4 WHERE marks > 75  sem_4 LIMIT 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'sem_4 LIMIT 3' at line 1
MariaDB [college]> SELECT *  FROM  sem_4 WHERE marks > 75  LIMIT 3;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    99 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
+--------+---------------------+-------+-----------+
3 rows in set (0.001 sec)

MariaDB [college]> SELECT marks  FROM  sem_4 WHERE marks > 75  LIMIT 3;
+-------+
| marks |
+-------+
|    99 |
|    98 |
|    77 |
+-------+
3 rows in set (0.001 sec)

MariaDB [college]> SELECT name,marks  FROM  sem_4 WHERE marks >75   LIMIT 3;
+---------------------+-------+
| name                | marks |
+---------------------+-------+
| UTKRIST BUDHATHOKI  |    99 |
| RAMESHWOR CHAUDHARY |    98 |
| CHANDAN SHARMA      |    77 |
+---------------------+-------+
3 rows in set (0.001 sec)

MariaDB [college]> -- <-------ORDER BY CLAUSE-------->
MariaDB [college]> -- TO SORT IN ASCENDING(ASC)  OR DESCENDING(DESC)
MariaDB [college]> SELECT * FROM sem_4 ORDER BY name ASC;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
|      6 | DIPESH THAPA        |    65 | LALITPUR  |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      7 | MALLI SHRESTHA      |     2 | IMADOL    |
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
|      1 | UTKRIST BUDHATHOKI  |    99 | KATHMANDU |
+--------+---------------------+-------+-----------+
7 rows in set (0.001 sec)

MariaDB [college]> SELECT marks  FROM sem_4 ORDER BY marks ASC;
+-------+
| marks |
+-------+
|     2 |
|    38 |
|    55 |
|    65 |
|    77 |
|    98 |
|    99 |
+-------+
7 rows in set (0.001 sec)

MariaDB [college]> SELECT marks,name  FROM sem_4 ORDER BY marks ASC;
+-------+---------------------+
| marks | name                |
+-------+---------------------+
|     2 | MALLI SHRESTHA      |
|    38 | KUSAL DUWAL         |
|    55 | CHANDAN RUNIYAR     |
|    65 | DIPESH THAPA        |
|    77 | CHANDAN SHARMA      |
|    98 | RAMESHWOR CHAUDHARY |
|    99 | UTKRIST BUDHATHOKI  |
+-------+---------------------+
7 rows in set (0.001 sec)

MariaDB [college]> 
MariaDB [college]> SELECT name,marks  FROM sem_4 ORDER BY marks ASC;
+---------------------+-------+
| name                | marks |
+---------------------+-------+
| MALLI SHRESTHA      |     2 |
| KUSAL DUWAL         |    38 |
| CHANDAN RUNIYAR     |    55 |
| DIPESH THAPA        |    65 |
| CHANDAN SHARMA      |    77 |
| RAMESHWOR CHAUDHARY |    98 |
| UTKRIST BUDHATHOKI  |    99 |
+---------------------+-------+
7 rows in set (0.001 sec)

MariaDB [college]> SELECT name,marks  FROM sem_4 ORDER BY marks DESC;
+---------------------+-------+
| name                | marks |
+---------------------+-------+
| UTKRIST BUDHATHOKI  |    99 |
| RAMESHWOR CHAUDHARY |    98 |
| CHANDAN SHARMA      |    77 |
| DIPESH THAPA        |    65 |
| CHANDAN RUNIYAR     |    55 |
| KUSAL DUWAL         |    38 |
| MALLI SHRESTHA      |     2 |
+---------------------+-------+
7 rows in set (0.001 sec)

MariaDB [college]> SELECT name,marks FROM sem_4 WHERE marks>=80 limit 2;
+---------------------+-------+
| name                | marks |
+---------------------+-------+
| UTKRIST BUDHATHOKI  |    99 |
| RAMESHWOR CHAUDHARY |    98 |
+---------------------+-------+
2 rows in set (0.001 sec)

MariaDB [college]> SELECT * FROM sem_4 ORDER BY marks>= 80 ASC;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      6 | DIPESH THAPA        |    65 | LALITPUR  |
|      7 | MALLI SHRESTHA      |     2 | IMADOL    |
|      1 | UTKRIST BUDHATHOKI  |    99 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    98 | LALITPUR  |
+--------+---------------------+-------+-----------+
7 rows in set (0.001 sec)

MariaDB [college]> 
