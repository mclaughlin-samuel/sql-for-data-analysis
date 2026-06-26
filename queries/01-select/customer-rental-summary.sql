SELECT customer_id,
MIN(rental_date) AS first_rental_date,
MAX(rental_date) AS last_rental_date,
COUNT(*) AS total_rentals
FROM rental
GROUP BY customer_id;
