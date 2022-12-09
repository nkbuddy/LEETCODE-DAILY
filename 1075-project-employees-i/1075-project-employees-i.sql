# Write your MySQL query statement below
WITH project_years AS
(
SELECT
    p.project_id, COUNT(p.employee_id) AS 'num_employee', SUM(experience_years) AS 'experience_years'
FROM
    Project p
        JOIN
    Employee e ON e.employee_id = p.employee_id
GROUP BY
    p.project_id
)
SELECT
    project_id, ROUND(experience_years / num_employee, 2) AS 'average_years'
FROM 
    project_years