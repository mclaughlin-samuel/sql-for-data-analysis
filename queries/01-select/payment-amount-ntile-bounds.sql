SELECT ntile,
MIN(amount) AS lower_bound,
MAX(amount) AS upper_bound,
COUNT(payment_id) AS payments
FROM (
    SELECT customer_id, payment_id, amount,
    NTILE(10) OVER (ORDER BY amount) AS ntile
    FROM payment
) a
GROUP BY 1
ORDER BY 1;
