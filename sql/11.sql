SELECT film.film_id, film.title, count(inventory.inventory_id)
FROM film
JOIN inventory ON film.film_id = inventory.film_id
WHERE film.title ILIKE 'h%'
GROUP BY film.film_id, film.title
ORDER BY film.title DESC;
