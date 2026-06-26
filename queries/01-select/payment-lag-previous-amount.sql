SELECT customer_id
,payment_date
,amount
,LAG(amount) OVER (PARTITION BY customer_id ORDER BY payment_date) AS previous_payment
FROM payment;
