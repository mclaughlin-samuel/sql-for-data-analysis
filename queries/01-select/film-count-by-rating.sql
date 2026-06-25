SELECT rating, COUNT(*) AS quantity
FROM film
GROUP BY 1;
