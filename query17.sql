SELECT
	M.movie_id,
	M.title AS movie_name,
    M.duration,
    M.rating,
    CONCAT(D.name, ' ', D.surname) AS director_name
    FROM Movies M INNER JOIN Directors D ON M.director_id = D.director_id
    WHERE M.duration > 150 AND M.rating > 8 
    ORDER BY director_name DESC