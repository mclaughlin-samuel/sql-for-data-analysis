SELECT records, COUNT(*)
FROM (
    SELECT customer_id, staff_id, amount,
    COUNT(*) AS records
    FROM payment
    GROUP BY 1, 2, 3
) a
WHERE records > 1
GROUP BY 1
ORDER BY 1;
