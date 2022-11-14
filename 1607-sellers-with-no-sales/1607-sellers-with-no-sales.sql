# Write your MySQL query statement below
SELECT
    seller_name AS 'SELLER_NAME' 
FROM
    Seller
WHERE
    seller_id NOT IN (
SELECT
    DISTINCT seller_id
FROM
    Orders
WHERE
    YEAR(sale_date) = '2020'
)
ORDER BY
    seller_name ASC