SELECT rental_date::date AS rental_day
,COUNT(*) AS num_rentals
FROM rental
GROUP BY 1
ORDER BY 1;
