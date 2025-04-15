SELECT 
	title,
    rating,
	budget
    FROM Movies
    WHERE rating = (SELECT MAX(rating) FROM Movies)
    ORDER BY budget ASC