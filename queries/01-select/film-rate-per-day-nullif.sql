SELECT film_id
,title
,rental_rate / NULLIF(rental_duration, 0) AS rate_per_day
FROM film;
