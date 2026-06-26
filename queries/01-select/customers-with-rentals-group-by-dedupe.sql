SELECT a.customer_id, a.first_name, a.last_name, a.email
FROM customer a
JOIN rental b ON a.customer_id = b.customer_id
GROUP BY 1, 2, 3, 4;
