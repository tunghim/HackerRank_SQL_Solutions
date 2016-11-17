/*
Enter your query here.
*/
SELECT ROUND(m.LAT_N, 4)
FROM station
AS m
WHERE (SELECT COUNT(LAT_N)
       FROM station
       WHERE m.LAT_N > LAT_N) = (SELECT COUNT(LAT_N)
                                FROM station
                                WHERE m.LAT_N < LAT_N);