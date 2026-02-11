-- Proposed Changes (Part 1)

-- Renaming Table
RENAME TABLE company TO companies;

-- Adding Unique Keys
ALTER TABLE companies
ADD UNIQUE KEY (headquarter_phone_number);

-- Drop Unique Key
ALTER TABLE customers
DROP INDEX email_address;

-- Add the Default value to the column
ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;