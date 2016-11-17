/*
You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date. It is guaranteed that the difference between the End_Date and the Start_Date is equal to 1 day for each row in the table.
If the End_Date of the tasks are consecutive, then they are part of the same project. Samantha is interested in finding the total number of different projects completed.
Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. If there is more than one project that have the same number of completion days, then order by the start date of the project.
*/
SELECT sdt.start_date, edt.end_date
FROM (SELECT start_date
     FROM projects
     WHERE start_date NOT IN (SELECT end_date
                              -- sdt stands for start_date_table
                             FROM projects)) AS sdt
JOIN (SELECT end_date
      FROM projects
      WHERE end_date NOT IN (SELECT start_date
                             -- edt stands for end_date_table
                            FROM projects)) AS edt
ON edt.end_date > sdt.start_date
GROUP BY sdt.start_date
ORDER BY DATEDIFF(edt.end_date, sdt.start_date), sdt.start_date;