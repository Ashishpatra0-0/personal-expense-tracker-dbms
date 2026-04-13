USE expense_tracker;

-- 1. Show all expenses
SELECT * FROM expenses;

-- 2. Show all income
SELECT * FROM income;

-- 3. Total expense of each user
SELECT user_id, SUM(amount) AS total_expense
FROM expenses
GROUP BY user_id;

-- 4. Total income of each user
SELECT user_id, SUM(amount) AS total_income
FROM income
GROUP BY user_id;

-- 5. Category-wise expense summary
SELECT c.category_name, SUM(e.amount) AS total_spent
FROM expenses e
JOIN categories c ON e.category_id = c.category_id
GROUP BY c.category_name;

-- 6. User-wise expense details
SELECT u.name, c.category_name, e.amount, e.date, e.description
FROM expenses e
JOIN users u ON e.user_id = u.user_id
JOIN categories c ON e.category_id = c.category_id;

-- 7. Remaining balance of each user
SELECT 
    u.name,
    IFNULL(i.total_income, 0) AS total_income,
    IFNULL(e.total_expense, 0) AS total_expense,
    IFNULL(i.total_income, 0) - IFNULL(e.total_expense, 0) AS balance
FROM users u
LEFT JOIN (
    SELECT user_id, SUM(amount) AS total_income
    FROM income
    GROUP BY user_id
) i ON u.user_id = i.user_id
LEFT JOIN (
    SELECT user_id, SUM(amount) AS total_expense
    FROM expenses
    GROUP BY user_id
) e ON u.user_id = e.user_id;