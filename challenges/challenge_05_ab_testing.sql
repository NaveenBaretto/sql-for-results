-- Challenge 5: A/B Testing Analysis

-- Task 1: Conversion rate per group
SELECT test_group,
       COUNT(*) AS users,
       SUM(CASE WHEN conversion = 1 THEN 1 ELSE 0 END) AS conversions,
       ROUND(100.0 * SUM(CASE WHEN conversion = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS conversion_rate
FROM ab_test_data
GROUP BY test_group;

-- Task 2: Average revenue per user in each group
SELECT test_group,
       ROUND(AVG(revenue), 2) AS avg_revenue
FROM ab_test_data
GROUP BY test_group;
