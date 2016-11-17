-- Using Oracle
SELECT DISTINCT xy1.*
FROM functions xy1, functions xy2
WHERE xy1.x = xy2.y
AND xy1.y = xy2.x
AND xy1.ROWID <> xy2.ROWID
AND xy1.x <= xy1.y
ORDER BY xy1.x;