SELECT
	D.director_id,
	D.name,
    D.surname,
    COUNT(DISTINCT M.genre_id) AS genre_count
    FROM Directors D INNER JOIN Movies M ON D.director_id = M.director_id 
    INNER JOIN Genres G ON M.genre_id = G.genre_id
    GROUP BY D.director_id
    HAVING 
    COUNT(DISTINCT M.genre_id) > 1
ORDER BY 
    genre_count DESC;