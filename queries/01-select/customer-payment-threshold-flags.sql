SELECT customer_id
,MAX(CASE WHEN amount >= 4.99 THEN 1 ELSE 0 END) AS has_premium_payment
,MAX(CASE WHEN amount <= 0.99 THEN 1 ELSE 0 END) AS has_budget_payment
FROM payment
GROUP BY 1;
