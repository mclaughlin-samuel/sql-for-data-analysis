SELECT title, rental_rate,
NTILE(4) OVER (ORDER BY rental_rate) AS quartile
FROM film
ORDER BY rental_rate;
