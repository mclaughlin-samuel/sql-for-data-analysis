-- total rows
SELECT COUNT(*) AS total_rentals
FROM rental;

-- unique customers who rented
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM rental;
