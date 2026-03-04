SELECT category.name, sum(CASE WHEN language.name = 'English' THEN 1 ELSE 0 END)
FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film ON film_category.film_id = film.film_id
JOIN language ON film.language_id = language.language_id
GROUP BY category.name
ORDER BY category.name;
