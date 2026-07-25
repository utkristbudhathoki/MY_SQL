                  -`                     utkrist@NONE-KNOWN
                 .o+`                    ------------------
                `ooo/                    OS: Arch Linux x86_64
               `+oooo:                   Kernel: Linux 7.1.4-arch1-1
              `+oooooo:                  Uptime: 12 mins
              -+oooooo+:                 Packages: 1017 (pacman)
            `/:-:++oooo+:                Shell: bash 5.3.15
           `/++++/+++++++:               CPU: 11th Gen Intel(R) Core(TM) i5-1135G7 (8) @ 4.20 GHz
          `/++++++++++++++:              GPU: Intel Iris Xe Graphics @ 1.30 GHz [Integrated]
         `/+++ooooooooooooo/`            Memory: 2.78 GiB / 7.48 GiB (37%)
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
| UT_STORE           |
| college            |
| information_schema |
| myDB               |
| mysql              |
| performance_schema |
| school             |
| sys                |
| testdb             |
+--------------------+
10 rows in set (0.006 sec)

MariaDB [(none)]> USE collegE;
ERROR 1049 (42000): Unknown database 'collegE'
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

MariaDB [college]> SELECT * FROM sem_4;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    96 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    96 | LALITPUR  |
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      6 | DIPESH THAPA        |    65 | LALITPUR  |
|      7 | MALLI SHRESTHA      |     2 | IMADOL    |
+--------+---------------------+-------+-----------+
7 rows in set (0.007 sec)

MariaDB [college]> -- DELETE (DML)------------->
MariaDB [college]> DELETE FROM sem_4
    -> WHERE MARKS<30;
Query OK, 1 row affected (0.015 sec)

MariaDB [college]> SELECT * FROM sem_4;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    96 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    96 | LALITPUR  |
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      6 | DIPESH THAPA        |    65 | LALITPUR  |
+--------+---------------------+-------+-----------+
6 rows in set (0.001 sec)

MariaDB [college]> INSERT INTO sem_4
    -> (rol_no,name,marks,city)
    -> VALUES
    -> (7,"KARINA KHAN",23,"NEPALGUNJ"),
    -> (8, "ANISHA SHARMA", 21, "KATHMANDU"),
    -> (9, "SANDESH THAPA", 22, "POKHARA"),
    -> (10, "PRIYA GURUNG", 20, "LALITPUR"),
    -> (11, "ROSHAN MAGAR", 24, "BUTWAL"),
    -> (12, "NISHA KARKI", 23, "BIRATNAGAR"),
    -> (13, "BIBEK ADHIKARI", 22, "DHARAN"),
    -> (14, "SUSHMA TAMANG", 21, "CHITWAN"),
    -> (15, "RAJESH SHRESTHA", 25, "HETAUDA"),
    -> (16, "SABINA RAI", 20, "JANAKPUR"),
    -> (17, "KAMAL BK", 23, "DHANGADHI");
Query OK, 11 rows affected (0.014 sec)
Records: 11  Duplicates: 0  Warnings: 0

MariaDB [college]> SELECT * FROM sem_4;
+--------+---------------------+-------+------------+
| rol_no | name                | marks | city       |
+--------+---------------------+-------+------------+
|      1 | UTKRIST BUDHATHOKI  |    96 | KATHMANDU  |
|      2 | RAMESHWOR CHAUDHARY |    96 | LALITPUR   |
|      3 | CHANDAN RUNIYAR     |    55 | HARION     |
|      4 | CHANDAN SHARMA      |    77 | HARION     |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR  |
|      6 | DIPESH THAPA        |    65 | LALITPUR   |
|      7 | KARINA KHAN         |    23 | NEPALGUNJ  |
|      8 | ANISHA SHARMA       |    21 | KATHMANDU  |
|      9 | SANDESH THAPA       |    22 | POKHARA    |
|     10 | PRIYA GURUNG        |    20 | LALITPUR   |
|     11 | ROSHAN MAGAR        |    24 | BUTWAL     |
|     12 | NISHA KARKI         |    23 | BIRATNAGAR |
|     13 | BIBEK ADHIKARI      |    22 | DHARAN     |
|     14 | SUSHMA TAMANG       |    21 | CHITWAN    |
|     15 | RAJESH SHRESTHA     |    25 | HETAUDA    |
|     16 | SABINA RAI          |    20 | JANAKPUR   |
|     17 | KAMAL BK            |    23 | DHANGADHI  |
+--------+---------------------+-------+------------+
17 rows in set (0.001 sec)

MariaDB [college]> SELECT * FROM sem_4
    -> ORDERBY marks desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'marks desc' at line 2
MariaDB [college]> SELECT * FROM sem_4 ORDER BY marks desc;
+--------+---------------------+-------+------------+
| rol_no | name                | marks | city       |
+--------+---------------------+-------+------------+
|      1 | UTKRIST BUDHATHOKI  |    96 | KATHMANDU  |
|      2 | RAMESHWOR CHAUDHARY |    96 | LALITPUR   |
|      4 | CHANDAN SHARMA      |    77 | HARION     |
|      6 | DIPESH THAPA        |    65 | LALITPUR   |
|      3 | CHANDAN RUNIYAR     |    55 | HARION     |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR  |
|     15 | RAJESH SHRESTHA     |    25 | HETAUDA    |
|     11 | ROSHAN MAGAR        |    24 | BUTWAL     |
|     12 | NISHA KARKI         |    23 | BIRATNAGAR |
|     17 | KAMAL BK            |    23 | DHANGADHI  |
|      7 | KARINA KHAN         |    23 | NEPALGUNJ  |
|     13 | BIBEK ADHIKARI      |    22 | DHARAN     |
|      9 | SANDESH THAPA       |    22 | POKHARA    |
|      8 | ANISHA SHARMA       |    21 | KATHMANDU  |
|     14 | SUSHMA TAMANG       |    21 | CHITWAN    |
|     10 | PRIYA GURUNG        |    20 | LALITPUR   |
|     16 | SABINA RAI          |    20 | JANAKPUR   |
+--------+---------------------+-------+------------+
17 rows in set (0.001 sec)

MariaDB [college]> SELECT * FROM sem_4 ORDER BY rol_no desc;
+--------+---------------------+-------+------------+
| rol_no | name                | marks | city       |
+--------+---------------------+-------+------------+
|     17 | KAMAL BK            |    23 | DHANGADHI  |
|     16 | SABINA RAI          |    20 | JANAKPUR   |
|     15 | RAJESH SHRESTHA     |    25 | HETAUDA    |
|     14 | SUSHMA TAMANG       |    21 | CHITWAN    |
|     13 | BIBEK ADHIKARI      |    22 | DHARAN     |
|     12 | NISHA KARKI         |    23 | BIRATNAGAR |
|     11 | ROSHAN MAGAR        |    24 | BUTWAL     |
|     10 | PRIYA GURUNG        |    20 | LALITPUR   |
|      9 | SANDESH THAPA       |    22 | POKHARA    |
|      8 | ANISHA SHARMA       |    21 | KATHMANDU  |
|      7 | KARINA KHAN         |    23 | NEPALGUNJ  |
|      6 | DIPESH THAPA        |    65 | LALITPUR   |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR  |
|      4 | CHANDAN SHARMA      |    77 | HARION     |
|      3 | CHANDAN RUNIYAR     |    55 | HARION     |
|      2 | RAMESHWOR CHAUDHARY |    96 | LALITPUR   |
|      1 | UTKRIST BUDHATHOKI  |    96 | KATHMANDU  |
+--------+---------------------+-------+------------+
17 rows in set (0.001 sec)

MariaDB [college]> SELECT * FROM sem_4 ORDER BY rol_no asc;
+--------+---------------------+-------+------------+
| rol_no | name                | marks | city       |
+--------+---------------------+-------+------------+
|      1 | UTKRIST BUDHATHOKI  |    96 | KATHMANDU  |
|      2 | RAMESHWOR CHAUDHARY |    96 | LALITPUR   |
|      3 | CHANDAN RUNIYAR     |    55 | HARION     |
|      4 | CHANDAN SHARMA      |    77 | HARION     |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR  |
|      6 | DIPESH THAPA        |    65 | LALITPUR   |
|      7 | KARINA KHAN         |    23 | NEPALGUNJ  |
|      8 | ANISHA SHARMA       |    21 | KATHMANDU  |
|      9 | SANDESH THAPA       |    22 | POKHARA    |
|     10 | PRIYA GURUNG        |    20 | LALITPUR   |
|     11 | ROSHAN MAGAR        |    24 | BUTWAL     |
|     12 | NISHA KARKI         |    23 | BIRATNAGAR |
|     13 | BIBEK ADHIKARI      |    22 | DHARAN     |
|     14 | SUSHMA TAMANG       |    21 | CHITWAN    |
|     15 | RAJESH SHRESTHA     |    25 | HETAUDA    |
|     16 | SABINA RAI          |    20 | JANAKPUR   |
|     17 | KAMAL BK            |    23 | DHANGADHI  |
+--------+---------------------+-------+------------+
17 rows in set (0.001 sec)

MariaDB [college]> DELETE FROM sem_4
    -> WHERE marks<25;
Query OK, 10 rows affected (0.015 sec)

MariaDB [college]> SELECT * FROM sem_4;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    96 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    96 | LALITPUR  |
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      6 | DIPESH THAPA        |    65 | LALITPUR  |
|     15 | RAJESH SHRESTHA     |    25 | HETAUDA   |
+--------+---------------------+-------+-----------+
7 rows in set (0.001 sec)

MariaDB [college]> UPDATE sem_4
    -> SET marks = 22
    -> WHERE rol_no = 6;
Query OK, 1 row affected (0.006 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [college]> SELECT * FROM sem_4;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    96 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    96 | LALITPUR  |
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      6 | DIPESH THAPA        |    22 | LALITPUR  |
|     15 | RAJESH SHRESTHA     |    25 | HETAUDA   |
+--------+---------------------+-------+-----------+
7 rows in set (0.001 sec)

MariaDB [college]> UPDATE sem_4 SET marks = 22 WHERE marks = 25;
Query OK, 1 row affected (0.015 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [college]> SELECT * FROM sem_4;
+--------+---------------------+-------+-----------+
| rol_no | name                | marks | city      |
+--------+---------------------+-------+-----------+
|      1 | UTKRIST BUDHATHOKI  |    96 | KATHMANDU |
|      2 | RAMESHWOR CHAUDHARY |    96 | LALITPUR  |
|      3 | CHANDAN RUNIYAR     |    55 | HARION    |
|      4 | CHANDAN SHARMA      |    77 | HARION    |
|      5 | KUSAL DUWAL         |    38 | BHAKTAPUR |
|      6 | DIPESH THAPA        |    22 | LALITPUR  |
|     15 | RAJESH SHRESTHA     |    22 | HETAUDA   |
+--------+---------------------+-------+-----------+
7 rows in set (0.001 sec)

MariaDB [college]> 
