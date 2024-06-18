-- Join the two tables so that every column and record appears, regardless of if there is not an owner_id
SELECT o.id, o.first_name, o.last_name, c.id, c.make, c.model, c.year, c.price, c.owner_id
FROM owners o
FULL JOIN cars c ON o.id = c.owner_id
ORDER BY o.id, c.id;

-- Count the number of cars for each owner
SELECT o.first_name, o.last_name, COUNT(c.id) as count
FROM owners o
LEFT JOIN cars c ON o.id = c.owner_id
GROUP BY o.first_name, o.last_name
ORDER BY o.first_name;

-- Count the number of cars for each owner and display the average price
SELECT o.first_name, o.last_name, AVG(c.price) as average_price, COUNT(c.id) as count
FROM owners o
LEFT JOIN cars c ON o.id = c.owner_id
GROUP BY o.first_name, o.last_name
HAVING COUNT(c.id) > 1 AND AVG(c.price) > 10000
ORDER BY o.first_name DESC;
