/*
Enter your query here.
*/
SELECT ROUND(LONG_W, 4)
FROM station
WHERE LAT_N < 137.2345
ORDER BY LAT_N desc
LIMIT 1;