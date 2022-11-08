# Write your MySQL query statement below
WITH s1 AS(
SELECT product_id, price AS 'store1' FROM Products WHERE store = 'store1'
), s2 AS(
SELECT product_id, price AS 'store2' FROM Products WHERE store = 'store2'
), s3 AS(
SELECT product_id, price AS 'store3' FROM Products WHERE store = 'store3'
)
SELECT
    p.product_id, s1.store1, s2.store2, s3.store3
FROM
    Products p
    LEFT JOIN
    s1 ON p.product_id = s1.product_id
    LEFT JOIN
    s2 ON p.product_id = s2.product_id
    LEFT JOIN
    s3 ON p.product_id = s3.product_id
GROUP BY
    p.product_id
ORDER BY
    p.product_id