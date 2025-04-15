SELECT name as actor_name, surname as actor_surname, COUNT(*) movie_count
FROM MovieDB.Actors_and_Actresses A, MovieDB.`Cast` C
WHERE A.actor_id = C.actor_id
GROUP BY A.actor_id;