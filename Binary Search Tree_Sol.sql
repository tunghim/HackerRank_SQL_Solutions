/*
Enter your query here.
*/
SELECT N
    , IF (
        P IS NULL, 'Root', IF (
            (SELECT COUNT(*)
             FROM BST
             WHERE P = Node.N) > 0, 'Inner', 'Leaf'
        )
    )
FROM BST
AS Node
ORDER BY N;