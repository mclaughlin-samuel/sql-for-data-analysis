SELECT rental_duration, COUNT(film_id) AS films
FROM film
GROUP BY 1
ORDER BY 1;
