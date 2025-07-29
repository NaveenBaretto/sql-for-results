-- Challenge 4: Window Functions

-- Task 1: Add row number to orders by each user
SELECT *, ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY order_date) AS order_rank
FROM orders;

-- Task 2: Running total revenue for each user
SELECT user_id, order_date, total_amount,
SUM(total_amount) OVER (PARTITION BY user_id ORDER BY order_date) AS running_total
FROM orders;
