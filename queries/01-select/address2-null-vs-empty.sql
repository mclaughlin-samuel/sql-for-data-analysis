SELECT
CASE WHEN address2 IS NULL THEN 'null'
     WHEN address2 = '' THEN 'empty string'
     ELSE 'has value'
END AS address2_status
,COUNT(*) AS count
FROM address
GROUP BY 1;
