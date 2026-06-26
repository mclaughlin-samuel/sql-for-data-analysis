SELECT title,
CASE WHEN rating = 'G' THEN 'General'
     WHEN rating = 'PG' THEN 'Parental Guidance'
     WHEN rating = 'PG-13' THEN 'Parental Guidance 13'
     WHEN rating = 'R' THEN 'Restricted'
     WHEN rating = 'NC-17' THEN 'Adults Only'
     ELSE rating::text
END AS rating_cleaned
FROM film;
