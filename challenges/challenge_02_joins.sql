-- Challenge 2: JOIN Operations

-- Task 1: Get all orders along with user name and email
SELECT o.order_id, o.order_date, o.amount, u.name, u.email
FROM orders o
JOIN users u ON o.user_id = u.user_id;

-- Task 2: Get orders with product name and category
SELECT o.order_id, p.product_name, p.category, o.quantity, o.total_amount
FROM orders o
JOIN products p ON o.product_id = p.product_id;
