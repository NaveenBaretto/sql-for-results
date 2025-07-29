-- Challenge 3: Aggregations

-- Task 1: Count of orders by country
SELECT u.country, COUNT(o.order_id) AS order_count
FROM orders o
JOIN users u ON o.user_id = u.user_id
GROUP BY u.country;

-- Task 2: Total revenue by product
SELECT p.product_name, SUM(o.total_amount) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name;
