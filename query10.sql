SELECT
	D.name,
    D.surname,
    D.nationality
    FROM Directors D INNER JOIN Movies M
    ON D.director_id = M.director_id
    INNER JOIN Genres G ON M.genre_id = G.genre_id
    WHERE STR_TO_DATE(M.release_date, '%d.%m.%Y') BETWEEN '2020-01-01' AND '2025-12-31' AND
    G.genre_name = 'Sci-Fi'
    ORDER BY D.nationality ASC