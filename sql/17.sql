SELECT
  country.country,
  SUM(payment.amount) AS profit
FROM payment
JOIN rental   ON payment.rental_id = rental.rental_id
JOIN customer ON rental.customer_id = customer.customer_id
JOIN address  ON customer.address_id = address.address_id
JOIN city     ON address.city_id = city.city_id
JOIN country  ON city.country_id = country.country_id
GROUP BY country.country
ORDER BY country.country;
