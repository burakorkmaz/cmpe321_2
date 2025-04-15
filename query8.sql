SELECT 
    d.name,
    d.surname
    FROM Directors d
    WHERE (SELECT COUNT(*) FROM Movies WHERE d.director_id = Movies.director_id ) > 2
	ORDER BY surname DESC