-- write your queries here

SELECT owners.id, owners.first_name, owners.last_name, vehicles.id, vehicles.make, vehicles.model, vehicles.year, vehicles.price, vehicles.owner_id
FROM owners
FULL JOIN vehicles ON owners.id = vehicles.owner_id;


SELECT first_name, last_name, COUNT(vehicles.id) AS count
FROM owners
LEFT JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name
ORDER BY first_name;


SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(vehicles.id) AS count
FROM owners
LEFT JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name
HAVING COUNT(vehicles.id) > 1 AND AVG(price) > 10000
ORDER BY first_name DESC;
