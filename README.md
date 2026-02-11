# Relational Sales Database System (MySQL)

## Business Story
This project was created for a **small retail shop owner** who wanted a **simple and affordable system** to manage daily sales and customer records.

The shop sells multiple items supplied by different companies.
Earlier, all records were maintained manually in notebooks, which caused:
- Difficulty tracking customer purchases
- No clear view of best-selling items
- Problems identifying loyal or problematic customers
- No structured record of companies supplying items

The shop owner requested a **basic MySQL database** that could:
- Store customer details
- Track sales transactions
- Maintain item pricing
- Link items to their respective companies

This database acts as a foundation system that can later be extended for reporting, analytics, or integration with billing software.

> Note: This project does not include the complete database structure or any real data, as full schema details and data insertion were restricted due to client confidentiality.

---

## Project Overview
This project is a **beginner-level MySQL database design project**.

It focus on creating and modifying a **relational sales database** using the SQL DDL commands.

The database represents a simple sales system that includes:
- Customers
- Sales transactions
- Items
- Companies

This project helps in understanding **database structure, relationships, and schema changes**.

---

## Objectives
- Learn how to create a database using MySQL
- Understand table relationships using **primary keys and foreign keys**
- Practice **ALTER TABLE** operations
- Apply **constraints** such as `UNIQUE`, `NOT NULL`, and `DEFAULT`
- Understand **ON DELETE CASCADE**

---

## Technologies Used
- **MySQL**
- **SQL (DDL commands)**
- Git & GitHub (for version control)

---

## ERD Diagram of Sales Database
<img alt="Sales Database ERD Diagram" src="https://github.com/amitkr209/Sales-Database-Design-Project/blob/master/Sales%20Database%20ERD%20Diagram.png" width="750">

---

## Database Structure
The database consists of the following main tables:

### Sales Table
Stores sales transaction records.
- purchase_number (Primary Key)
- date_of_purchase
- customer_id (Foreign Key)
- item_code (Foreign Key)

### Customers Table
Stores customer-related information.
- Customer ID (Primary Key)
- first_name
- last_name
- email_address (Unique Key)
- number_of_complaints
  
### Items Table
Stores item details available in the shop.
- item_code (Primary Key)
- item
- unit_price
- company_id (Foreign Key)

### Companies Table
Stores company-related information.
- company_id (Primary Key)
- comapny_name
- headquarter_phone_number

### Relationships:
- Each sale is linked to a customer
- Each sale is linked to an item
- Each item belongs to a company

> 📁 This database are saved in a separate SQL file: [sales_database.sql](/Sales%20Database.sql)

---

## Proposed Changes by the owner (Part 1)
After reviewing real business requirements, the shop owner proposed several structural changes to improve data accuracy and flexibility in the SALES database.

> You can see the First Proposed Changes by the owner here -> [Proposed Changes (Part 1)](/Proposed%20Changes%20Documents/Proposed%20Changes%20in%20Sales%20Databases%20(Part%201).pdf)

### Owner’s Requested Changes
- Rename the table `company` to `companies`companies for better naming clarity.
- Make the **Headquarter phone number** column in the companies table **UNIQUE**.
- Remove the **UNIQUE constraint** from the **email** column in the customers table
- Set the **default value as `0`** for the **number of complaints** column in the customers table

### Changes Implemented by Me
- Renamed the table using `RENAME TABLE`.
- Added a `UNIQUE` constraint to the headquarter phone number column
- Dropped the unique key from the customer email column to allow duplicate emails if needed
- Updated the complaints column to use `0` as the default value

All changes were applied using ALTER TABLE statements and carefully tested to ensure existing data was not affected.

> 📁 These updates are saved in a separate SQL file: [proposed_changes_part1.sql](/Proposed%20Changes%20(Part%201).sql)

---

## Proposed Changes – Part 2
In the next phase, the shop owner requested **additional structural improvements** to further enhance data validation and flexibility in the SALES database.

> > You can see the Second Proposed Changes by the owner here -> [Proposed Changes (Part 2)](/Proposed%20Changes%20Documents/Proposed%20Changes%20in%20Sales%20Databases%20(Part%202).pdf)

### Owner’s Requested Changes
- Add a **UNIQUE constraint** to the **email address** column
- Set the **default value as `"X"`** for the **company name** column
- Allow the **item code** column in the **sales table** to accept `NULL` values

###  Changes Implemented by Me
- Added a `UNIQUE` key constraint to the customer email column to prevent duplicate email entries
- Updated the company name column to use `"X"` as the default value when no name is provided
- Modified the item code column in the sales table to allow NULL values for flexible transaction entries

All updates were applied using ALTER TABLE statements and validated to ensure smooth integration with the existing database structure.

> 📁 The SQL script for these updates is stored separately as: [proposed_changes_part2.sql](/Proposed%20Changes%20(Part%202).sql
)

---

## Files Include
- [database_creation.sql](/Sales%20Database.sql) – Initial database and table creation
- [proposed_changes_part1.sql](/Proposed%20Changes%20(Part%201).sql) – Client-requested modifications (Part 1)
- [proposed_changes_part2.sql](/Proposed%20Changes%20(Part%202).sql) – Client-requested modifications (Part 2)

---

## ✅ Key Learnings
Through this project, I gained hands-on experience with real-world database design and modification. Key learnings include:
- Designing a **relational MySQL database** for a small business use case
- Understanding and translating **real-client requirements** into database changes
- Using `ALTER TABLE` to modify existing tables safely
- Working with constraints such as `PRIMARY KEY`, `FOREIGN KEY`, and `UNIQUE`
- Managing **DEFAULT values** and **NULL constraints** based on business needs
- Handling schema changes without affecting existing data
- Maintaining **clean, readable, and well-organized SQL scripts**
- Following a **freelancing-style workflow** with versioned change requests (Part 1 & Part 2)

---

## Conclusion
This project showcases a complete **beginner-friendly MySQL database solution** built for a real small business. It demonstrates my ability to design databases, apply client-driven changes, and use SQL best practices in a practical, freelancing-style workflow.

---

### 📝 Note
- This project does **not include the complete database structure and all columns**.
- **No real data has been inserted** into the tables.
- This is because **client permission was not granted** to share full schema details or actual business data.
- The project focuses purely on **database design, structure, and schema modifications** for learning and portfolio purposes.
