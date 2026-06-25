SELECT *
FROM payment
WHERE MOD(payment_id, 100) = 6;
