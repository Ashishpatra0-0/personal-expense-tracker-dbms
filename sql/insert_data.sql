USE expense_tracker;

INSERT INTO users (name, email) VALUES
('Ashish', 'ashish@gmail.com'),
('Rohan', 'rohan@gmail.com'),
('Priya', 'priya@gmail.com');

INSERT INTO categories (category_name) VALUES
('Food'),
('Travel'),
('Shopping'),
('Bills'),
('Health');

INSERT INTO income (user_id, amount, date, source) VALUES
(1, 25000.00, '2026-04-01', 'Salary'),
(2, 18000.00, '2026-04-02', 'Freelancing'),
(3, 22000.00, '2026-04-03', 'Part-time Job');

INSERT INTO expenses (user_id, category_id, amount, date, description) VALUES
(1, 1, 250.00, '2026-04-05', 'Lunch'),
(1, 2, 500.00, '2026-04-06', 'Auto fare'),
(1, 4, 1200.00, '2026-04-07', 'Electricity bill'),
(2, 3, 1500.00, '2026-04-05', 'Clothes shopping'),
(2, 1, 300.00, '2026-04-06', 'Dinner'),
(3, 5, 800.00, '2026-04-08', 'Medicines'),
(3, 2, 400.00, '2026-04-09', 'Bus ticket');