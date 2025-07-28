-- SELECT specific columns from a table
SELECT id, name, signup_date
FROM users;

-- Filter data using WHERE
SELECT *
FROM users
WHERE region = 'South' AND status = 'active';

-- Simple INNER JOIN between users and orders
SELECT u.id, u.name, o.order_id, o.revenue
FROM users u
JOIN orders o ON u.id = o.user_id;

-- Using ORDER BY and LIMIT
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;