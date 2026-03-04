SELECT film.title, film.film_id, count(film_actor.actor_id) AS actor_count
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
GROUP BY film.title, film.film_id
ORDER BY actor_count, film.title;
