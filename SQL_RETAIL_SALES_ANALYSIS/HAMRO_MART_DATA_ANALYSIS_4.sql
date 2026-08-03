MariaDB [HAMRO_MART_DB]> SELECT
    ->     customer_id,
    ->     SUM(total_sale) AS total_sales
    -> FROM hamro_mart_data
    -> GROUP BY customer_id
    -> ORDER BY total_sales DESC
    -> LIMIT 5;
+-------------+-------------+
| customer_id | total_sales |
+-------------+-------------+
|           3 |       38440 |
|           1 |       30750 |
|           5 |       30405 |
|           2 |       25295 |
|           4 |       23580 |
+-------------+-------------+
5 rows in set (0.002 sec)

MariaDB [HAMRO_MART_DB]> SELECT customer_id, SUM(total_sale) as total_sales FROM hamro_mart_data GROUP BY 1 ORDER BY 2 DESC LIMIT 5
    -> ;
+-------------+-------------+
| customer_id | total_sales |
+-------------+-------------+
|           3 |       38440 |
|           1 |       30750 |
|           5 |       30405 |
|           2 |       25295 |
|           4 |       23580 |
+-------------+-------------+
5 rows in set (0.002 sec)

MariaDB [HAMRO_MART_DB]> -- 8. **Write a SQL query to find the top 5 customers based on the highest total sales.:**
MariaDB [HAMRO_MART_DB]> SELECT 
    -> customer_id,
    -> SUM(total_sale) AS total_sales
    -> FROM hamro_mart_data
    -> GROUP BY customer_id 
    -> ORDER BY total_sale DESC
    -> LIMIT 5;
+-------------+-------------+
| customer_id | total_sales |
+-------------+-------------+
|          75 |        9290 |
|          83 |        9160 |
|         120 |        2900 |
|         153 |        2225 |
|          98 |        7535 |
+-------------+-------------+
5 rows in set (0.002 sec)

MariaDB [HAMRO_MART_DB]> --  9. **Write a SQL query to find the number of unique customers who purchased items from each category.:**
MariaDB [HAMRO_MART_DB]> SELECT
    -> category,
    -> COUNT(DISTINCT customer_id) AS Unique_customers
    -> FROM
    -> hamro_mart_data
    -> GROUP BY 1;
+-------------+------------------+
| category    | Unique_customers |
+-------------+------------------+
| Beauty      |              141 |
| Clothing    |              149 |
| Electronics |              144 |
+-------------+------------------+
3 rows in set (0.004 sec)

MariaDB [HAMRO_MART_DB]> SELECT
    ->     category,
    ->     COUNT(DISTINCT customer_id) AS unique_customers
    -> FROM hamro_mart_data
    -> GROUP BY category;
+-------------+------------------+
| category    | unique_customers |
+-------------+------------------+
| Beauty      |              141 |
| Clothing    |              149 |
| Electronics |              144 |
+-------------+------------------+
3 rows in set (0.004 sec)

MariaDB [HAMRO_MART_DB]> SELECT
    ->     CASE
    ->         WHEN HOUR(sale_time) < 12 THEN 'Morning'
    ->         WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
    ->         ELSE 'Evening'
    ->     END AS shift,
    ->     COUNT(*) AS number_of_orders
    -> FROM hamro_mart_data
    -> GROUP BY shift;
+-----------+------------------+
| shift     | number_of_orders |
+-----------+------------------+
| Afternoon |              377 |
| Evening   |             1062 |
| Morning   |              561 |
+-----------+------------------+
3 rows in set (0.004 sec)

MariaDB [HAMRO_MART_DB]> WITH hourly_sale
    -> AS
    -> (
    -> SELECT *,
    ->     CASE
    ->         WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
    ->         WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
    ->         ELSE 'Evening'
    ->     END as shift
    -> FROM retail_sales
    -> )
    -> SELECT 
    ->     shift,
    ->     COUNT(*) as total_orders    
    -> FROM hourly_sale
    -> GROUP BY shift
    -> ;
ERROR 1146 (42S02): Table 'HAMRO_MART_DB.retail_sales' doesn't exist
MariaDB [HAMRO_MART_DB]> WITH hourly_sale AS
    -> (
    ->     SELECT *,
    ->         CASE
    ->             WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
    ->             WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
    ->             ELSE 'Evening'
    ->         END AS shift
    ->     FROM hamro_mart_data
    -> )
    -> SELECT
    ->     shift,
    ->     COUNT(*) AS total_orders
    -> FROM hourly_sale
    -> GROUP BY shift;
+-----------+--------------+
| shift     | total_orders |
+-----------+--------------+
| Afternoon |          377 |
| Evening   |         1062 |
| Morning   |          561 |
+-----------+--------------+
3 rows in set (0.004 sec)

MariaDB [HAMRO_MART_DB]> SELECT
    ->     CASE
    ->         WHEN HOUR(sale_time) < 12 THEN 'Morning'
    ->         WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
    ->         ELSE 'Evening'
    ->     END AS shift,
    ->     COUNT(*) AS number_of_orders
    -> FROM hamro_mart_data
    -> GROUP BY shift;
+-----------+------------------+
| shift     | number_of_orders |
+-----------+------------------+
| Afternoon |              377 |
| Evening   |             1062 |
| Morning   |              561 |
+-----------+------------------+
3 rows in set (0.004 sec)

MariaDB [HAMRO_MART_DB]> ^C
MariaDB [HAMRO_MART_DB]> MariaDB [HAMRO_MART_DB]> SELECT 
    ->  -> customer_id,
    ->  -> SUM(total_sale) AS total_sales
    ->  -> FROM hamro_mart_data
    ->  -> GROUP BY customer_id 
    ->  -> ORDER BY total_sale DESC
    ->  -> LIMIT 5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'MariaDB [HAMRO_MART_DB]> SELECT 
 -> customer_id,
 -> SUM(total_sale) AS tota...' at line 1
MariaDB [HAMRO_MART_DB]> 
