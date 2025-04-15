SELECT
	G.genre_id,
    G.genre_name,
    AVG(M.rating) AS average_rating
    FROM Genres G INNER JOIN Movies M ON M.genre_id = G.genre_id
    GROUP BY M.genre_id
	HAVING
    AVG(M.rating) = (
        SELECT 
            MAX(avg_rating)
        FROM (
            SELECT 
                AVG(M2.rating) AS avg_rating
            FROM 
                Movies M2
            GROUP BY 
                M2.genre_id
        ) AS GenreAverages
    );