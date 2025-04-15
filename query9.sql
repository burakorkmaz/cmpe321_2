SELECT 
    a1.name, 
    a1.surname
FROM 
    Actors_and_Actresses a1,
    Actors_and_Actresses a2
WHERE 
    a2.name = 'Amy' AND 
    a2.surname = 'Adams' AND
    RIGHT(a1.birth_date, 4) = RIGHT(a2.birth_date, 4)
ORDER BY 
    a1.surname ASC;