                  -`                     utkrist@NONE-KNOWN
                 .o+`                    ------------------
                `ooo/                    OS: Arch Linux x86_64
               `+oooo:                   Kernel: Linux 7.1.4-arch1-1
              `+oooooo:                  Uptime: 3 hours, 59 mins
              -+oooooo+:                 Packages: 1017 (pacman)
            `/:-:++oooo+:                Shell: bash 5.3.15
           `/++++/+++++++:               CPU: 11th Gen Intel(R) Core(TM) i5-1135G7 (8) @ 4.20 GHz
          `/++++++++++++++:              GPU: Intel Iris Xe Graphics @ 1.30 GHz [Integrated]
         `/+++ooooooooooooo/`            Memory: 2.37 GiB / 7.48 GiB (32%)
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

MariaDB [(none)]> SHOW TABLES;
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> SHOW TABLE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [(none)]> USE UT_STORE;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [UT_STORE]> SHOW TABLES;
+--------------------+
| Tables_in_UT_STORE |
+--------------------+
| CUSTOMER_DETAIL    |
+--------------------+
1 row in set (0.001 sec)

MariaDB [UT_STORE]> DESC CUSTOMER_DETAIL;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| CUSTOMER_ID   | int(11)     | NO   | PRI | NULL    |       |
| CUSTOMER_NAME | varchar(50) | YES  |     | NULL    |       |
| MODE          | varchar(40) | YES  |     | NULL    |       |
| CITY          | varchar(30) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.001 sec)

MariaDB [UT_STORE]> SELECT * FROM CUSTOMER_DETAIL;
+-------------+-----------------+-------------+-----------+
| CUSTOMER_ID | CUSTOMER_NAME   | MODE        | CITY      |
+-------------+-----------------+-------------+-----------+
|           1 | Ram Sharma      | Credit Card | Kathmandu |
|           2 | Sita Thapa      | Cash        | Lalitpur  |
|           3 | Hari KC         | Esewa       | Bhaktapur |
|           4 | Gita Rai        | Khalti      | Pokhara   |
|           5 | Bikash Shrestha | Credit Card | Chitwan   |
|           6 | Anita Gurung    | Cash        | Lalitpur  |
|           7 | Suman Tamang    | Esewa       | Kathmandu |
|           8 | Rita Magar      | Khalti      | Bhaktapur |
|           9 | Prakash Lama    | Cash        | Pokhara   |
|          10 | Nisha Adhikari  | Credit Card | Kathmandu |
+-------------+-----------------+-------------+-----------+
10 rows in set (0.006 sec)

MariaDB [UT_STORE]> SELECT MODE
    -> FROM CUSTOMER_DETAIL
    -> GROUP BY MODE;
+-------------+
| MODE        |
+-------------+
| Cash        |
| Credit Card |
| Esewa       |
| Khalti      |
+-------------+
4 rows in set (0.001 sec)

MariaDB [UT_STORE]> SELECT MODE,COUNT(CUSTOMER_NAME)
    -> FROM CUSTOMER_DETAIL
    -> GROUP BY MODE;
+-------------+----------------------+
| MODE        | COUNT(CUSTOMER_NAME) |
+-------------+----------------------+
| Cash        |                    3 |
| Credit Card |                    3 |
| Esewa       |                    2 |
| Khalti      |                    2 |
+-------------+----------------------+
4 rows in set (0.001 sec)

MariaDB [UT_STORE]> --  <-------------HAVING CLAUSE------------->
MariaDB [UT_STORE]> USE college
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [college]> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| TEACHER           |
| sem_4             |
| student           |
+-------------------+
3 rows in set (0.001 sec)

MariaDB [college]> select * from sem_4;
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

MariaDB [college]> SELECT COUNT(name), city
    -> FROM sem_4
    -> GROUP BY city
    -> HAVING max(marks) > 77;
+-------------+-----------+
| COUNT(name) | city      |
+-------------+-----------+
|           1 | KATHMANDU |
|           2 | LALITPUR  |
+-------------+-----------+
2 rows in set (0.001 sec)

MariaDB [college]> SELECT COUNT(name), city FROM sem_4 GROUP BY city HAVING max(marks) >= 77;
+-------------+-----------+
| COUNT(name) | city      |
+-------------+-----------+
|           2 | HARION    |
|           1 | KATHMANDU |
|           2 | LALITPUR  |
+-------------+-----------+
3 rows in set (0.001 sec)

MariaDB [college]> SELECT (name), city FROM sem_4 GROUP BY city HAVING max(marks) >= 77;
+---------------------+-----------+
| name                | city      |
+---------------------+-----------+
| CHANDAN RUNIYAR     | HARION    |
| UTKRIST BUDHATHOKI  | KATHMANDU |
| RAMESHWOR CHAUDHARY | LALITPUR  |
+---------------------+-----------+
3 rows in set (0.001 sec)

MariaDB [college]> -- <-----------GENERAL ORDER FOR WRITING CLAUSE------------->
MariaDB [college]> SELECT CLOUMNS(s)
    -> FROM table_name
    -> WHERE conditions
    -> GROUP BY columns
    -> HAVING conditon
    -> order BY columns (ASC); ^C
    -> \c
MariaDB [college]> 
