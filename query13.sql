-- Q13
SELECT G.genre_name, D.name, D.surname, 
       COUNT(*) AS directed_count
FROM Movies M INNER JOIN Directors D ON M.director_id = D.director_id
INNER JOIN Genres G ON M.genre_id = G.genre_id
GROUP BY G.genre_id, D.director_id
HAVING COUNT(*) = (
        SELECT COUNT(*) 
        FROM Movies M2 
        WHERE M2.genre_id = G.genre_id 
        GROUP BY M2.director_id 
        ORDER BY COUNT(*) DESC 
        LIMIT 1
    )
ORDER BY G.genre_name;