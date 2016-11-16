-- Using Oracle
SELECT doctor, professor, singer, actor
FROM (
    SELECT *
    FROM (
        SELECT name, occupation, (ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name)) AS row_num
        FROM occupations
    )
    PIVOT (
        min(name) 
        FOR occupation IN ('Doctor' AS doctor, 'Professor' AS professor, 'Singer' AS singer, 'Actor' AS actor)
    )
    ORDER BY row_num
);