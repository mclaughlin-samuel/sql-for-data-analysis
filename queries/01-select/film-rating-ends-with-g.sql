SELECT *
FROM film
WHERE RIGHT(rating::text, 1) = 'G';
