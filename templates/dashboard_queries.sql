-- Metrics summary for dashboard
SELECT 
  COUNT(DISTINCT user_id) AS active_users,
  SUM(revenue) AS total_revenue,
  AVG(revenue) AS avg_revenue_per_user
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL '30 days';

-- Region-wise revenue breakdown
SELECT 
  u.region,
  SUM(o.revenue) AS region_revenue
FROM orders o
JOIN users u ON o.user_id = u.id
GROUP BY u.region;

-- Time series for daily revenue
SELECT 
  order_date,
  SUM(revenue) AS daily_revenue
FROM orders
GROUP BY order_date
ORDER BY order_date;