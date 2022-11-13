# Write your MySQL query statement below
SELECT
    contest_id, ROUND(COUNT(user_id)/(SELECT COUNT(*) FROM Users) *100, 2) AS 'percentage'
FROM
    Register
GROUP BY
    1
ORDER BY
    2 desc,
    1 ASC