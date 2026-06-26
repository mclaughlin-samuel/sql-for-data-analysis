SELECT a.rental_id
,a.rental_date
,CASE WHEN a.return_date IS NULL
      THEN (a.rental_date + (c.rental_duration || ' days')::interval)::date
      ELSE a.return_date::date
 END AS return_date_derived
FROM rental a
JOIN inventory b ON a.inventory_id = b.inventory_id
JOIN film c ON b.film_id = c.film_id;
