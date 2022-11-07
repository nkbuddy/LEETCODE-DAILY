# Write your MySQL query statement below\
WITH y_flag AS(
    SELECT
        employee_id, department_id
    FROM
        Employee
    WHERE
        primary_flag = 'Y'
), n_flag AS(
        SELECT
            employee_id, department_id
        FROM
            Employee
        WHERE
            employee_id NOT IN (
    SELECT
        employee_id
    FROM
        Employee
    WHERE
        primary_flag = 'Y')
    )
    
SELECT
    employee_id, department_id
FROM
    n_flag
UNION
SELECT
    employee_id, department_id
FROM
    y_flag
