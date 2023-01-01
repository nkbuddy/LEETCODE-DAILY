# Write your MySQL query statement below
SELECT
    MAX(num) AS 'num'
FROM
    (SELECT
        num
    FROM
        MyNumbers
GROUP BY 
    num
HAVING
    Count(num) = 1
ORDER BY num DESC
LIMIT 1) AS t;