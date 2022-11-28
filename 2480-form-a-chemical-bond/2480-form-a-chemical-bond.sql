# Write your MySQL query statement below
WITH metal AS(
SELECT
    symbol AS 'metal'
FROM
    Elements
WHERE
    type = 'Metal'
), nonmetal AS(
SELECT
    symbol AS 'nonmetal'
FROM
    Elements
WHERE
    type = 'Nonmetal'
)
SELECT
    *
FROM
    metal
        JOIN
    nonmetal