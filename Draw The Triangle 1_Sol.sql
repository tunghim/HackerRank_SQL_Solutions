SET @number = 21;
SELECT REPEAT('* ', @number := @NUMBER - 1)
FROM information_schema.tables;