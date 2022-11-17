# Write your MySQL query statement below
WITH rename_sales AS(
SELECT
    TRIM(LOWER(product_name)) AS 'product_name', DATE_FORMAT(sale_date, '%Y-%m') AS 'sale_date', sale_id
FROM
    Sales
)

SELECT
    product_name, sale_date, COUNT(sale_id) AS 'total'
FROM
    rename_sales
GROUP BY
    product_name, sale_date
ORDER BY
    product_name ASC,
    sale_date ASC