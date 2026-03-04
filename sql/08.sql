SELECT staff.first_name, staff.last_name, address.address AS street_address
FROM staff
JOIN address ON staff.address_id = address.address_id
ORDER BY staff.last_name;
