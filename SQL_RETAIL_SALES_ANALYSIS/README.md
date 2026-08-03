# Retail Sales Analysis SQL Project

## Project Overview

I created this project to practice SQL by working with a retail sales dataset in MariaDB.

Through this project, I am learning how to work with a relational database, clean and explore data, perform SQL analysis, and answer real-world business questions using SQL.

## What I Am Learning

- Work with a relational database
- Explore and understand a dataset
- Clean data and check for missing values
- Use SQL functions such as `COUNT()`, `SUM()`, and `AVG()`
- Use `DISTINCT`, `GROUP BY`, and `ORDER BY`
- Analyze customers, sales, categories, and revenue
- Use `CASE` statements
- Learn Window Functions such as `RANK()`
- Learn Common Table Expressions (CTEs)
- Answer business questions using SQL

## Tools & Technologies

- MariaDB
- SQL
- Git & GitHub


## Project Goals

The main goal of this project is to build my SQL skills through hands-on practice with a real-world-style retail sales dataset.

I will work through the project step by step, starting with database setup and data exploration, then moving toward data cleaning, analysis, and more advanced SQL queries.

# 1. Database Setup
- **Database Creation**: The project starts by creating a database named HAMRO_MART_DB.

- **Table Creation**: A table named `hamro_mart_data` is created to store the retail sales data. The table structure includes columns for transaction ID, sale date, sale time, customer ID, gender, age, product category, quantity sold, price per unit, cost of goods sold (COGS), and total sale amount.

  ```sql
  CREATE DATABASE HAMRO_MART_DB;

  MariaDB [HAMRO_MART_DB]> CREATE TABLE hamro_mart_data
    -> (
    ->     transactions_id INT PRIMARY KEY,
    ->     sale_date DATE,
    ->     sale_time TIME,
    ->     customer_id INT,
    ->     gender VARCHAR(10),
    ->     age INT,
    ->     category VARCHAR(35),
    ->     quantity INT,
    ->     price_per_unit FLOAT,
    ->     cogs FLOAT,
    ->     total_sale FLOAT
    -> );
  ```
# 2. Data Import

I imported the CSV dataset into the `hamro_mart_data` table using MariaDB's
```sql
MariaDB [HAMRO_MART_DB]> LOAD DATA LOCAL INFILE '/home/utkrist/MY SQL/SQL_RETAIL_SALES_ANALYSIS/SQL - Retail Sales Analysis_Data .csv'
    -> INTO TABLE hamro_mart_data
    -> FIELDS TERMINATED BY ','
    -> LINES TERMINATED BY '\n'
    -> IGNORE 1 ROWS
    -> (transactions_id, sale_date, sale_time, customer_id, gender, age, category, quantity, price_per_unit, cogs, total_sale);
```

### Import Result

The CSV contained 2,000 data records, and all 2,000 records were imported successfully.

![CSV Data Import](screenshots/import_of_data.png)
