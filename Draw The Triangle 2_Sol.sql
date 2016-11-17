SET @number = 0;
SELECT REPEAT('* ', @number := @NUMBER + 1)
FROM information_schema.tables
LIMIT 20;