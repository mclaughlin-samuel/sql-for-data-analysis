SELECT customer_id, staff_id, amount, COUNT(*) AS records
FROM payment
GROUP BY 1, 2, 3
HAVING COUNT(*) > 1
ORDER BY 1;
