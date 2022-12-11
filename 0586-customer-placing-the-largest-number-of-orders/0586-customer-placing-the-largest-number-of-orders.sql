# Write your MySQL query statement below
WITH Orders AS(
SELECT
    customer_number, COUNT(order_number) AS 'total_order'
FROM
    Orders
GROUP BY
    customer_number
ORDER BY
    total_order DESC
)
SELECT
    customer_number
FROM
    Orders
LIMIT 1