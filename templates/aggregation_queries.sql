-- COUNT total users by region
SELECT region, COUNT(*) AS user_count
FROM users
GROUP BY region;

-- SUM revenue per user
SELECT user_id, SUM(revenue) AS total_revenue
FROM orders
GROUP BY user_id;

-- Average product price by category
SELECT category, AVG(price) AS avg_price
FROM products
GROUP BY category;

-- HAVING to filter aggregated results
SELECT user_id, COUNT(*) AS order_count
FROM orders
GROUP BY user_id
HAVING COUNT(*) > 3;