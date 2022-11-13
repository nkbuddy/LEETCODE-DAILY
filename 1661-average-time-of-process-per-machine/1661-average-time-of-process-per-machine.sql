# Write your MySQL query statement below
WITH timet AS(
SELECT
    a.machine_id, a.process_id, (b.timestamp - a.timestamp) AS 'p_time'
FROM
    Activity a, Activity b
WHERE
    b.activity_type = 'end'
        AND
    a.activity_type = 'start'
        AND
    a.machine_id = b.machine_id
        AND
    a.process_id = b.process_id
)
SELECT
    machine_id, ROUND(AVG(p_time),3) AS 'processing_time'
FROM
    timet
GROUP BY
    machine_id