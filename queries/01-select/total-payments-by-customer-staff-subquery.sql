SELECT *
FROM (
    SELECT customer_id, staff_id, SUM(amount) AS total_payments
    FROM payment
    GROUP BY 1, 2
    LIMIT 1000
) a;
