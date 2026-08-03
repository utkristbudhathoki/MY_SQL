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
