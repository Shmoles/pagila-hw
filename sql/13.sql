SELECT film.film_id, film.title, language.language_id, language.name
FROM film
JOIN language ON film.language_id = language.language_id
WHERE language.name = 'English'
  AND (film.title LIKE 'K%' OR film.title LIKE 'Q%')
ORDER BY film.title;
