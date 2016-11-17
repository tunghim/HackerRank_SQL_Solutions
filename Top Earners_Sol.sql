/*
Enter your query here.
*/
SELECT salary * months, COUNT(*)
FROM employee
GROUP BY 1
ORDER BY 1 desc
LIMIT 1;