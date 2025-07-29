-- Challenge 1: Basic SELECT and Filtering

-- Task 1: Select all users from India
SELECT * FROM users
WHERE country = 'India';

-- Task 2: Select users who signed up after Jan 1, 2024
SELECT * FROM users
WHERE signup_date > '2024-01-01';

-- Task 3: Find the name and email of all users from the US
SELECT name, email FROM users
WHERE country = 'US';
