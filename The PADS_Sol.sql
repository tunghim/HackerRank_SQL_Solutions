/*
Enter your query here.
*/
SELECT CONCAT(name, "(", substr(occupation, 1, 1), ")")
FROM occupations
ORDER BY name;

SELECT CONCAT("There are total ", COUNT(*), " ", LCASE(occupation), "s.")
FROM occupations
GROUP BY occupation
ORDER BY COUNT(*), occupation;