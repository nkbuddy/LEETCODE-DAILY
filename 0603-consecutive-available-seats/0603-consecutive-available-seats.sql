# Write your MySQL query statement below
WITH oc_seat AS(
SELECT
    seat_id
FROM
    Cinema
WHERE
    free = 1
)
SELECT
    seat_id
FROM
    Cinema
WHERE
    (seat_id - 1 IN (SELECT seat_id FROM Cinema WHERE free = 1)
     AND
     free = 1)
    OR
    (seat_id + 1 IN (SELECT seat_id FROM Cinema WHERE free = 1)
    AND
    free = 1)
ORDER BY
    seat_id ASC