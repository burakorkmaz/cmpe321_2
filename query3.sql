SELECT 
  movie_id, 
  title, 
  DATE_FORMAT(STR_TO_DATE(release_date, '%d.%m.%Y'), '%d.%m.%Y') AS release_date,
  duration, 
  director_id, 
  rating, 
  genre_id, 
  budget
FROM 
  Movies
WHERE 
  rating = (SELECT MIN(rating) FROM Movies);