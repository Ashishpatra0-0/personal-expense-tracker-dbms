CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50)
);

CREATE TABLE income (
    income_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    amount DECIMAL(10,2),
    date DATE,
    source VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE expenses (
    expense_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    category_id INT,
    amount DECIMAL(10,2),
    date DATE,
    description VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);