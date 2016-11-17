SELECT h.hacker_id, h.name, SUM(scoreMax) AS sumMax
FROM hackers AS h
JOIN (
    SELECT MAX(s.score) AS scoreMax, s.hacker_id, s.challenge_id
    FROM submissions AS s
    GROUP BY s.hacker_id, s.challenge_id
    HAVING scoreMax <> 0
) AS sMax
ON h.hacker_id = sMax.hacker_id
GROUP BY h.hacker_id
ORDER BY sumMax DESC, h.hacker_id;