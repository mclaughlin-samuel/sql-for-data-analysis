SELECT ROUND(length, -1) AS length_bin,
COUNT(film_id) AS films
FROM film
GROUP BY 1
ORDER BY 1;
