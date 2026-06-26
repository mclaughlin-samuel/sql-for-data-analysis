SELECT title, rental_rate,
PERCENT_RANK() OVER (ORDER BY rental_rate) AS percentile
FROM film
ORDER BY rental_rate;
