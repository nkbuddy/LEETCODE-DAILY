# Write your MySQL query statement below
SELECT
    a.student_name AS 'member_A', b.student_name AS 'member_B', C.student_name AS 'member_C'
FROM
    SchoolA a,
    SchoolB b,
    SchoolC c
WHERE
    a.student_id != b.student_id
        AND
    a.student_id != C.student_id
        AND
    b.student_id != c.student_id
        AND
    a.student_name != b.student_name
        AND
    a.student_name != C.student_name
        AND
    b.student_name != c.student_name