SELECT to_char(rental_date, 'Month YYYY') AS rental_month
,COUNT(*) AS num_rentals
FROM rental
GROUP BY 1
ORDER BY MIN(rental_date);
