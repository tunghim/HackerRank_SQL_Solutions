/*
Enter your query here.
*/
SELECT ROUND(ABS(MIN(LAT_N) - MIN(LONG_W)) + ABS(MAX(LAT_N) - MAX(LONG_W)), 4)
FROM station