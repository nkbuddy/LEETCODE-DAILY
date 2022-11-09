# Write your MySQL query statement below
WITH manager AS(
SELECT
    e1.employee_id, e1.name, '1' AS 'reports', e2.age AS 'average_age'
FROM
    Employees e1,
    Employees e2
WHERE
    e2.reports_to = e1.employee_id
)
SELECT
    employee_id, name, COUNT(reports) AS 'reports_count', ROUND(SUM(average_age)/COUNT(reports)) AS 'average_age'
FROM
    manager m
GROUP BY
    employee_id
ORDER BY
    employee_id