SELECT a.customer_id
,MAX(CASE WHEN c.rating::text IN ('G','PG') THEN 1 ELSE 0 END) AS rented_family
,MAX(CASE WHEN c.rating::text IN ('R','NC-17') THEN 1 ELSE 0 END) AS rented_adult
FROM rental a
JOIN inventory b ON a.inventory_id = b.inventory_id
JOIN film c ON b.film_id = c.film_id
GROUP BY 1;
