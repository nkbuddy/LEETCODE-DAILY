# Write your MySQL query statement below
WITH over_20 AS(
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month, order_id, customer_id
FROM
    Orders
WHERE
    invoice > 20
)
SELECT
    month, COUNT(order_id) AS 'order_count', COUNT(DISTINCT customer_id) AS 'customer_count'
FROM
    over_20
GROUP BY
    month