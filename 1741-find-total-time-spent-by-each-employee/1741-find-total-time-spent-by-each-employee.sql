# Write your MySQL query statement below
WITH e1 AS(
SELECT
    event_day AS 'day', emp_id, (out_time - in_time) AS total_time
FROM
    Employees
)
SELECT
    e1.day, e1.emp_id, SUM(e1.total_time) AS total_time
FROM
    e1
GROUP BY
    e1.day, e1.emp_id