# Write your MySQL query statement below
SELECT DISTINCT
    title
FROM
    TVProgram tv
        LEFT JOIN
    Content c ON tv.content_id = c.content_id
WHERE
    MONTH(tv.program_date) = 6
        AND
    YEAR(tv.program_date) = 2020
        AND
    c.Kids_content = 'Y'
        AND
    c.content_type = 'Movies'