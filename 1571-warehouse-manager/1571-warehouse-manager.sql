# Write your MySQL query statement below
WITH products_size AS(
SELECT
    product_id, (Width * Length * Height) AS 'size'
FROM
    Products
)
SELECT
    w.name AS 'warehouse_name', SUM((w.units * ps.size)) AS 'volume'
FROM
    Warehouse w
        LEFT JOIN
    products_size ps ON w.product_id = ps.product_id
GROUP BY
    w.name