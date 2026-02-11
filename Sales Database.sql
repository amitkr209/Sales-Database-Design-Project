-- Creating database
CREATE DATABASE sales;
USE sales;

-- Creating Tables
CREATE TABLE sales
(
	purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code INT NOT NULL,
PRIMARY KEY (purchase_number)
);

CREATE TABLE customers
(
	customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(55),
    last_name VARCHAR(55),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id),
UNIQUE KEY (email_address)
);

CREATE TABLE items
(
	item_code INT PRIMARY KEY,
    item VARCHAR(55) NOT NULL,
    unit_price DECIMAL(10,2),
    company_id VARCHAR(55)
);

CREATE TABLE company
(
	company_id VARCHAR(55) PRIMARY KEY,
    company_name VARCHAR(255),
    headquarter_phone_number VARCHAR(255)
);

-- Creating Foreign Keys
Alter TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;

ALTER TABLE sales
ADD FOREIGN KEY (item_code) REFERENCES items(item_code) ON DELETE CASCADE;

ALTER TABLE items
ADD FOREIGN KEY (company_id) REFERENCES company(company_id) ON DELETE CASCADE;