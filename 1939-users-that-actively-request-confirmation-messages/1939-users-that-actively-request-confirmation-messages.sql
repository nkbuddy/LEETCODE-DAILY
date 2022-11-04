# Write your MySQL query statement below
SELECT 
    DISTINCT c2.user_id
FROM
    Confirmations c1, Confirmations c2
WHERE
    timestampdiff(second, c1.time_stamp, c2.time_stamp) <= 86400
        AND
    c1.user_id = c2.user_id
        AND
    c2.time_stamp > c1.time_stamp