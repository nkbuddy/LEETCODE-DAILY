# Write your MySQL query statement below
WITH student_subject AS(
SELECT
    s1.student_id, s1.student_name, s2.subject_name
FROM
    Students s1
        CROSS JOIN
    Subjects s2
), examinations2 AS(
SELECT
    student_id, subject_name, COUNT(*) AS 'attended_exams'
FROM
    Examinations 
GROUP BY
    student_id, subject_name
)
SELECT
    ss.student_id, ss.student_name, ss.subject_name, IFNULL(e.attended_exams,0) AS 'attended_exams'
FROM
    student_subject ss
        LEFT JOIN
    Examinations2 e ON (ss.student_id = e.student_id AND ss.subject_name = e.subject_name)
ORDER BY
    student_id,
    subject_name