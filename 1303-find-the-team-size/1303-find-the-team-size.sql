# Write your MySQL query statement below
WITH time_size AS(
SELECT
    team_id, COUNT(team_id) AS 'team_size'
FROM
    Employee
GROUP BY
    team_id
)
SELECT
    e.employee_id, t.team_size
FROM
    Employee e
        LEFT JOIN
    time_size t ON e.team_id = t.team_id