SELECT w.id, wp.age, w.coins_needed, w.`power`
FROM wands AS w, wands_property AS wp
WHERE w.code = wp.code
AND wp.is_evil = 0
AND w.coins_needed = (
    SELECT MIN(coins_needed)
    FROM wands AS w1, wands_property AS wp1
    WHERE w1.code = wp1.code AND w1.power = w.power AND wp1.age = wp.age
)
ORDER BY w.`power` DESC, wp.age DESC;