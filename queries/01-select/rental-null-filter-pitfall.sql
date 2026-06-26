SELECT rental_id, return_date
FROM rental
WHERE return_date <> '2005-08-30'::date
OR return_date IS NULL;
