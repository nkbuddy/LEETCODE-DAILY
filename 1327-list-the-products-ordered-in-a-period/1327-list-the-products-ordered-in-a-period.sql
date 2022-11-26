# Write your MySQL query statement below
WITH total_order AS
(
SELECT
    product_id, SUM(unit) AS 'total'
FROM
    Orders
WHERE
    YEAR(order_date) = 2020
        AND
    MONTH(order_date) = 2
GROUP BY
    product_id
)
SELECT
    p.product_name, t.total AS 'unit'
FROM
    total_order t
        LEFT JOIN
    Products p ON t.product_id = p.product_id
WHERE
    t.total >= 100
