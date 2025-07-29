-- Use window functions to rank users by their order amount
SELECT user_id, order_id, amount,
       RANK() OVER (PARTITION BY user_id ORDER BY amount DESC) AS rank_by_amount
FROM orders;

-- Calculate running total of revenue over time
SELECT order_date, amount,
       SUM(amount) OVER (ORDER BY order_date) AS running_total
FROM orders;

-- Segment users by total revenue
SELECT u.user_id, u.name, SUM(o.amount) AS total_spent,
       CASE
           WHEN SUM(o.amount) > 500 THEN 'High Value'
           WHEN SUM(o.amount) BETWEEN 200 AND 500 THEN 'Medium Value'
           ELSE 'Low Value'
       END AS segment
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id, u.name;