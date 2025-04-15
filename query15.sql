SELECT
    D.name,
    D.surname,
    COUNT(*) AS number_of_movies
FROM 
    Directors D 
INNER JOIN 
    Movies M ON D.director_id = M.director_id
GROUP BY 
    D.director_id
HAVING 
    COUNT(*) = (
        SELECT MAX(movie_count)
        FROM (
            SELECT COUNT(*) AS movie_count
            FROM Movies
            GROUP BY director_id
        ) AS counts
    );