SELECT last_name, count(*) AS last_name_count
FROM actor
GROUP BY last_name
ORDER BY last_name_count DESC;
