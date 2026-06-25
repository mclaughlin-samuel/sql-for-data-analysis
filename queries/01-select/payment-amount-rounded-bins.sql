SELECT
ROUND(amount, 0) AS amount_bin,
COUNT(customer_id) AS customers
FROM payment
GROUP BY 1
ORDER BY 1;
