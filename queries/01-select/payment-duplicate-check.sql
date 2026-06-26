SELECT COUNT(*)
FROM (
    SELECT customer_id, staff_id, amount,
    COUNT(*) AS records
    FROM payment
    GROUP BY 1, 2, 3
) a
WHERE records > 1;
