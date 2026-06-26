SELECT a.generate_series::date AS rental_day
,COUNT(b.rental_id) AS num_rentals
FROM (
  SELECT *
  FROM generate_series('2005-05-01'::timestamp, '2006-02-28', '1 day')
) a
LEFT JOIN rental b ON a.generate_series::date = b.rental_date::date
GROUP BY 1
ORDER BY 1;
