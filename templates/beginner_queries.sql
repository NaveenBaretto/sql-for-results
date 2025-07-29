-- Select all columns from the users table
SELECT * FROM users;

-- Find users from India
SELECT name, email FROM users
WHERE country = 'India';

-- Get all orders placed after June 1, 2025
SELECT * FROM orders
WHERE order_date > '2025-06-01';

-- Join users and orders to see who placed each order
SELECT u.name, o.order_id, o.order_date, o.amount
FROM users u
JOIN orders o ON u.user_id = o.user_id;