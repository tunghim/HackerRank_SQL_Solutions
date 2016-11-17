SELECT c.hacker_id, h.name, COUNT(c.challenge_id) AS challenges_created
FROM hackers AS h, challenges AS c
WHERE h.hacker_id = c.hacker_id
GROUP BY c.hacker_id
HAVING challenges_created = (
    SELECT COUNT(c1.challenge_id)
    FROM challenges AS c1
    GROUP BY c1.hacker_id
    ORDER BY COUNT(c1.challenge_id) DESC
    LIMIT 1
)
OR challenges_created IN (
    SELECT t.total
    FROM (
          SELECT COUNT(c2.challenge_id) AS total, c2.hacker_id
          FROM challenges AS c2
          GROUP BY c2.hacker_id
    ) AS t
    GROUP BY t.total
    HAVING COUNT(t.hacker_id) = 1
)
ORDER BY challenges_created DESC, h.hacker_id;