-- Proposed changes (Part 2)

-- Add the unique key
ALTER TABLE customers
ADD UNIQUE KEY (email_address);

-- Add a default value in the column
ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) DEFAULT "X";

-- Conert the Not Null column to Null.
ALTER TABLE sales
MODIFY item_code INT NULL;