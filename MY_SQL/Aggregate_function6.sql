                  -`                     utkrist@NONE-KNOWN
                 .o+`                    ------------------
                `ooo/                    OS: Arch Linux x86_64
               `+oooo:                   Kernel: Linux 7.1.4-arch1-1
              `+oooooo:                  Uptime: 2 hours, 56 mins
              -+oooooo+:                 Packages: 1012 (pacman)
            `/:-:++oooo+:                Shell: bash 5.3.15
           `/++++/+++++++:               CPU: 11th Gen Intel(R) Core(TM) i5-1135G7 (8) @ 4.20 GHz
          `/++++++++++++++:              GPU: Intel Iris Xe Graphics @ 1.30 GHz [Integrated]
         `/+++ooooooooooooo/`            Memory: 3.43 GiB / 7.48 GiB (46%)
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

MariaDB [(none)]> USE COLLEGE;
ERROR 1049 (42000): Unknown database 'COLLEGE'
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
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      6 | DIPESH THAPA        |    65 | LALITPUR  |
|      7 | MALLI SHRESTHA      |     2 | IMADOL    |
+--------+---------------------+-------+-----------+
7 rows in set (0.002 sec)

MariaDB [college]> -- <-------Aggregate Functions -------->
MariaDB [college]> -- AGGREGATE FUNCTION PERFORMS A CALCULATION ON A SET OF VALUES,AND RETURN A SINGLE VALUE 
MariaDB [college]> SELECT max(marks) FROM sem_4;
+------------+
| max(marks) |
+------------+
|         99 |
+------------+
1 row in set (0.001 sec)

MariaDB [college]> SELECT avg(marks) FROM sem_4;
+------------+
| avg(marks) |
+------------+
|    62.0000 |
+------------+
1 row in set (0.001 sec)

MariaDB [college]> SELECT COUNT(NAME) FROM sem_4;
+-------------+
| COUNT(NAME) |
+-------------+
|           7 |
+-------------+
1 row in set (0.000 sec)

MariaDB [college]> SELECT avg(NAME) FROM sem_4;
+-----------+
| avg(NAME) |
+-----------+
|         0 |
+-----------+
1 row in set, 7 warnings (0.001 sec)

MariaDB [college]> SELECT sum(NAME) FROM sem_4;
+-----------+
| sum(NAME) |
+-----------+
|         0 |
+-----------+
1 row in set, 7 warnings (0.001 sec)

MariaDB [college]> SELECT sum(marKS) FROM sem_4;
+------------+
| sum(marKS) |
+------------+
|        434 |
+------------+
1 row in set (0.001 sec)

MariaDB [college]> -- <---------GROUP BY CLAUSE------>
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
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      6 | DIPESH THAPA        |    65 | LALITPUR  |
|      7 | MALLI SHRESTHA      |     2 | IMADOL    |
+--------+---------------------+-------+-----------+
7 rows in set (0.000 sec)

MariaDB [college]> SELECT city FROM GROUP BY city;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'GROUP BY city' at line 1
MariaDB [college]> SELECT city FROM sem_4 GROUP BY city;
+-----------+
| city      |
+-----------+
| BHAKTAPUR |
| HARION    |
| IMADOL    |
| KATHMANDU |
| LALITPUR  |
+-----------+
5 rows in set (0.001 sec)

MariaDB [college]> SELECT city, count(rol_no)
    -> FROM sem_4
    -> GROUP BY city;
+-----------+---------------+
| city      | count(rol_no) |
+-----------+---------------+
| BHAKTAPUR |             1 |
| HARION    |             2 |
| IMADOL    |             1 |
| KATHMANDU |             1 |
| LALITPUR  |             2 |
+-----------+---------------+
5 rows in set (0.001 sec)

MariaDB [college]> SELECT marks FROM sem_4 GROUP BY name;
+-------+
| marks |
+-------+
|    55 |
|    77 |
|    65 |
|    38 |
|     2 |
|    98 |
|    99 |
+-------+
7 rows in set (0.001 sec)

MariaDB [college]> SELECT marks,city FROM sem_4 GROUP BY name;
+-------+-----------+
| marks | city      |
+-------+-----------+
|    55 | HARION    |
|    77 | HARION    |
|    65 | LALITPUR  |
|    38 | BHAKTAPUR |
|     2 | IMADOL    |
|    98 | LALITPUR  |
|    99 | KATHMANDU |
+-------+-----------+
7 rows in set (0.001 sec)

MariaDB [college]> SELECT city FROM sem_4 Group By name;
+-----------+
| city      |
+-----------+
| HARION    |
| HARION    |
| LALITPUR  |
| BHAKTAPUR |
| IMADOL    |
| LALITPUR  |
| KATHMANDU |
+-----------+
7 rows in set (0.001 sec)

MariaDB [college]> SELECT city FROM sem_4 Group By city;
+-----------+
| city      |
+-----------+
| BHAKTAPUR |
| HARION    |
| IMADOL    |
| KATHMANDU |
| LALITPUR  |
+-----------+
5 rows in set (0.001 sec)

MariaDB [college]> SELECT city FROM sem_4 Group By city,name;
+-----------+
| city      |
+-----------+
| BHAKTAPUR |
| HARION    |
| HARION    |
| IMADOL    |
| KATHMANDU |
| LALITPUR  |
| LALITPUR  |
+-----------+
7 rows in set (0.001 sec)

MariaDB [college]> SELECT city FROM sem_4 Group By city;
+-----------+
| city      |
+-----------+
| BHAKTAPUR |
| HARION    |
| IMADOL    |
| KATHMANDU |
| LALITPUR  |
+-----------+
5 rows in set (0.001 sec)

MariaDB [college]> SELECT name FROM sem_4 Group By city;
+---------------------+
| name                |
+---------------------+
| KUSAL DUWAL         |
| CHANDAN RUNIYAR     |
| MALLI SHRESTHA      |
| UTKRIST BUDHATHOKI  |
| RAMESHWOR CHAUDHARY |
+---------------------+
5 rows in set (0.001 sec)

MariaDB [college]> SELECT CITY, COUNT(rol_no)
    -> FROM sem_4
    -> GROUP BY city;
+-----------+---------------+
| CITY      | COUNT(rol_no) |
+-----------+---------------+
| BHAKTAPUR |             1 |
| HARION    |             2 |
| IMADOL    |             1 |
| KATHMANDU |             1 |
| LALITPUR  |             2 |
+-----------+---------------+
5 rows in set (0.001 sec)

MariaDB [college]> SELECT city ,avg(marks)
    -> FROM sem_4
    -> GROUP By city,mark;
ERROR 1054 (42S22): Unknown column 'mark' in 'GROUP BY'
MariaDB [college]> SELECT city ,avg(marks) FROM sem_4 GROUP By city,marks;
+-----------+------------+
| city      | avg(marks) |
+-----------+------------+
| BHAKTAPUR |    38.0000 |
| HARION    |    55.0000 |
| HARION    |    77.0000 |
| IMADOL    |     2.0000 |
| KATHMANDU |    99.0000 |
| LALITPUR  |    65.0000 |
| LALITPUR  |    98.0000 |
+-----------+------------+
7 rows in set (0.001 sec)

MariaDB [college]> SELECT city ,avg(marks) FROM sem_4 GROUP By city;
+-----------+------------+
| city      | avg(marks) |
+-----------+------------+
| BHAKTAPUR |    38.0000 |
| HARION    |    66.0000 |
| IMADOL    |     2.0000 |
| KATHMANDU |    99.0000 |
| LALITPUR  |    81.5000 |
+-----------+------------+
5 rows in set (0.001 sec)

MariaDB [college]> 
