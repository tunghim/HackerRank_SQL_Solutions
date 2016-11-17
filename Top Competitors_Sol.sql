SELECT s.hacker_id, h.name
FROM hackers AS h, submissions AS s, challenges AS c, difficulty AS d
WHERE h.hacker_id = s.hacker_id AND s.challenge_id = c.challenge_id AND c.difficulty_level = d.difficulty_level AND s.score = d.score
GROUP BY s.hacker_id, h.name
HAVING COUNT(s.score) > 1
ORDER BY COUNT(submission_id) DESC, hacker_id;