/*
Samantha interviews many candidates from different colleges using coding challenges and contests. Write a query to print the contest_id, hacker_id, name, and the sums of total_submissions, total_accepted_submissions, total_views, and total_unique_views for each contest sorted by contest_id. Exclude the contest from the result if all four sums are 0.
*/
SELECT c.contest_id, c.hacker_id, c.name, SUM(TS), SUM(TAS), SUM(TV), SUM(TUV) 
FROM contests c
JOIN colleges co
ON co.contest_id = c.contest_id
JOIN challenges ch
ON ch.college_id = co.college_id
-- Exclude those challenges that haven't been hold in any college.
LEFT JOIN (SELECT CHALLENGE_ID, SUM(total_submissions) TS, SUM(total_accepted_submissions) TAS
           FROM submission_stats
           GROUP BY challenge_id
          ) s
ON s.challenge_id = ch.challenge_id
-- Exclude those challenges that haven't been hold in any college.
LEFT JOIN (SELECT challenge_id, SUM(total_views) TV, SUM(total_unique_views) TUV
           FROM view_stats
           GROUP BY challenge_id
          ) v
ON v.challenge_id = ch.challenge_id
GROUP BY c.contest_id
ORDER BY c.contest_id;