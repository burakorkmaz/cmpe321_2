SELECT 
    D.name,
    D.surname,
    M.title AS movie_name,
    RIGHT(M.release_date, 4) AS year,
    M.rating
FROM 
    Movies M
INNER JOIN 
    Directors D ON M.director_id = D.director_id
INNER JOIN (
    SELECT 
        RIGHT(release_date, 4) AS year,
        MAX(rating) AS max_rating
    FROM 
        Movies
    GROUP BY 
        RIGHT(release_date, 4)
) AS MaxRatingsPerYear
    ON RIGHT(M.release_date, 4) = MaxRatingsPerYear.year
    AND M.rating = MaxRatingsPerYear.max_rating
ORDER BY 
    year ASC;