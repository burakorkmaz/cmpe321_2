SELECT
	movie_id,
	title,
    release_date,
    duration,
    Movies.director_id,
    rating,
    genre_id,
    budget
FROM Movies INNER JOIN Directors
 ON Movies.director_id = Directors.director_id
 WHERE Directors.name = 'Christopher' AND Directors.surname = 'Nolan'
 AND Movies.duration > 120
 ORDER BY movie_id DESC;