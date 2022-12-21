# Write your MySQL query statement below
SELECT
    u.name AS 'name', IFNULL(SUM(distance),0) AS 'travelled_distance'
FROM
    Users u
    LEFT JOIN
    Rides r ON r.user_id = u.id
GROUP BY
    user_id
ORDER BY
    travelled_distance DESC,
    name ASC