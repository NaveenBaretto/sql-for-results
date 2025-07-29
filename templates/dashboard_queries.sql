-- KPI: Total Revenue This Month
SELECT SUM(amount) AS total_revenue
FROM orders
WHERE strftime('%Y-%m', order_date) = strftime('%Y-%m', 'now');

-- KPI: Conversion Funnel Drop-off
SELECT step_name, COUNT(*) AS users_in_step
FROM funnel_steps
GROUP BY step_name
ORDER BY step_timestamp;

-- KPI: A/B Test Conversion Rate
SELECT test_group,
       COUNT(*) AS total_users,
       SUM(CASE WHEN conversion = TRUE THEN 1 ELSE 0 END) AS converted,
       ROUND(100.0 * SUM(CASE WHEN conversion = TRUE THEN 1 ELSE 0 END) / COUNT(*), 2) AS conversion_rate
FROM ab_test_data
GROUP BY test_group;

-- KPI: Top-Selling Products
SELECT p.product_name, SUM(o.quantity) AS total_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 5;