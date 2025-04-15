SELECT 
    movie_id, 
    title, 
    duration, 
    rating, 
    director_id, 
    DATE_FORMAT(STR_TO_DATE(release_date, '%d.%m.%Y'), '%d/%m/%Y') AS date
FROM 
    Movies
WHERE 
    STR_TO_DATE(release_date, '%d.%m.%Y') < '2024-01-01'
ORDER BY 
    STR_TO_DATE(release_date, '%d.%m.%Y') DESC;