/*
Enter your query here.
*/
SELECT ROUND(MAX(LAT_N), 4)
FROM station
WHERE LAT_N < 137.2345;