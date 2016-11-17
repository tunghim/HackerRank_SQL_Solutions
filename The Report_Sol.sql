/*
Enter your query here.
*/
SELECT
CASE
    WHEN g.grade >= 8 THEN s.name
    WHEN g.grade < 8 THEN 'NULL'
END
, g.grade, s.marks
FROM students AS s
JOIN grades AS g
ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY g.grade desc, s.name;