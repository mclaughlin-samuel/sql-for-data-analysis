SELECT rentals, COUNT(*) AS num_customers
FROM (
    SELECT customer_id, COUNT(rental_id) AS rentals
    FROM rental
    GROUP BY 1
) a
GROUP BY 1
ORDER BY 1;
