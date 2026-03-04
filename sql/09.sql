SELECT staff.first_name, staff.last_name, sum(payment.amount)
FROM staff
JOIN payment ON staff.staff_id = payment.staff_id
WHERE payment.payment_date >= '2020-01-01'
  AND payment.payment_date < '2020-02-01'
GROUP BY staff.staff_id, staff.first_name, staff.last_name
ORDER BY staff.first_name;
