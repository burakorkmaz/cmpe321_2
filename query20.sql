SELECT
    A.name,
    A.surname,
    COUNT(DISTINCT G.genre_id) AS genre_count,
    CASE 
        WHEN COUNT(DISTINCT G.genre_id) > 1 THEN 'TRUE'
        ELSE 'FALSE'
    END AS multiple_appearance
FROM 
    Actors_and_Actresses A 
INNER JOIN 
    Cast C ON A.actor_id = C.actor_id
INNER JOIN 
    Movies M ON C.movie_id = M.movie_id
INNER JOIN 
    Genres G ON M.genre_id = G.genre_id
GROUP BY 
    A.actor_id
ORDER BY 
    A.surname DESC;