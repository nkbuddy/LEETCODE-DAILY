# Write your MySQL query statement below
with project2 as(
SELECT
    project_id, count(employee_id) as numberOf
FROM
    Project
GROUP BY
    project_id
)
SELECT
    project_id
FROM
    project2
WHERE
    numberOf = (SELECT MAX(numberOf) FROM project2)