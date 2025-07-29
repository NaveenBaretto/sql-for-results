-- Count number of users per country
SELECT country, COUNT(*) AS user_count
FROM users
GROUP BY country;

-- Total revenue by country
SELECT u.country, SUM(o.amount) AS total_revenue
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.country;

-- Average order amount
SELECT AVG(amount) AS avg_order_amount
FROM orders;

-- Number of orders per user
SELECT user_id, COUNT(*) AS order_count
FROM orders
GROUP BY user_id;