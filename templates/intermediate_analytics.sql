-- Calculate week-over-week growth using window functions
SELECT 
  user_id,
  signup_date,
  COUNT(*) OVER (PARTITION BY DATE_TRUNC('week', signup_date)) AS weekly_signups
FROM users;

-- Funnel drop-off using CASE
SELECT 
  user_id,
  MAX(CASE WHEN step = 'landing' THEN 1 ELSE 0 END) AS landed,
  MAX(CASE WHEN step = 'signup' THEN 1 ELSE 0 END) AS signed_up,
  MAX(CASE WHEN step = 'purchase' THEN 1 ELSE 0 END) AS purchased
FROM funnel_steps
GROUP BY user_id;

-- CASE to define custom buckets
SELECT 
  user_id,
  revenue,
  CASE 
    WHEN revenue > 1000 THEN 'High Value'
    WHEN revenue BETWEEN 500 AND 1000 THEN 'Mid Value'
    ELSE 'Low Value'
  END AS customer_segment
FROM orders;