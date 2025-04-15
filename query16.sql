/*hatali*/
SELECT 
	A.name,
    A.surname,
    AVG(M.rating) AS average_rating
    FROM Actors_and_Actresses A 
    INNER JOIN Cast C ON C.actor_id = A.actor_id
    INNER JOIN Movies M ON C.movie_id = M.movie_id
    GROUP BY A.actor_id
	ORDER BY 
    average_rating DESC;
