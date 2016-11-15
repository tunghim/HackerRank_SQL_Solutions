/*
Enter your query here.
*/
SELECT *
FROM ( 
    SELECT city, length(city)
    FROM station
    ORDER BY length(city) asc, city asc
    LIMIT 1
)
AS minRes
UNION 
SELECT *
FROM ( 
    SELECT city, length(city)
    FROM station
    ORDER BY length(city) desc, city asc
    LIMIT 1
)
AS maxRes