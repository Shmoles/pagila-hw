SELECT customer.customer_id, customer.first_name, customer.last_name, sum(payment.amount)
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
ORDER BY customer.last_name, customer.first_name;
