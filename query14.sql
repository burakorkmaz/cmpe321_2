SELECT
	M.movie_id,
	M.title,
    D.name,
    D.surname
    FROM Movies M INNER JOIN Directors D ON M.director_id = D.director_id
    WHERE STR_TO_DATE(M.release_date,'%d.%m.%Y') > '2010-01-01'
    AND D.name != 'Christopher' AND D.surname != 'Nolan'
ORDER BY 
M.movie_id ASC