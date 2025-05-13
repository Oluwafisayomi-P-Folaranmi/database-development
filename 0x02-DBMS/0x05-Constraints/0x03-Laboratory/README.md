# **Laboratory**

## **✅ Little Lemon Restaurant**

**Working with constraints**

### **Task 1:**

Create the `clients` table with the following columns and constraints:

* `client_id`: `INT`, `NOT NULL` and `PRIMARY KEY`
* `full_name`: `VARCHAR(100)` `NOT NULL`
* `phone_number`: `INT`, `NOT NULL` and `UNIQUE`

### **Task 2:**

Create the `items` table with the following attributes and constraints:

* `item_id`: `INT`, `NOT NULL` and `PRIMARY KEY`
* `item_name`: `VARCHAR(100)` `NOT NULL`
* `price`: `DECIMAL(5,2)` `NOT NULL`

### **Task 3:**

Create the `orders` table with the following constraints:

* `order_id`: `INT`, `NOT NULL` and `PRIMARY KEY`
* `client_id`: `INT`, `NOT NULL` and `FOREIGN KEY`
* `item_id`: `INT`, `NOT NULL` and `FOREIGN KEY`
* `quantity`: `INT`, `NOT NULL` and maximum allowed items in each order is 3 only
* `cost`: `DECIMAL(6,2)` `NOT NULL`

## **✅ Mangata and Gallo Jewelry Store**

Mangata and Gallo is a jewelry store that specializes in special occasions like engagements, weddings, and anniversaries in Texas. The company's database contains several tables of data, including the `staff` table, which contains information about the `staff_id`, the `full_name`, and the `phone_number`.

### **Task 1:**

Create the `staff` table with the following `PRIMARY KEY` and `NOT NULL` constraints:

* `staff_id` should be `INT`, `NOT NULL`, and `PRIMARY KEY`
* `phone_number` should be `INT`, `NOT NULL`, and `UNIQUE`
* `full_name`: `VARCHAR(100)` `NOT NULL`

### **Task 2:**

Create the `contract_info` table with the following key and domain constraints:

* `contract_id` should be `INT`, `NOT NULL`, and `PRIMARY KEY`
* `staff_id` should be `INT`, `NOT NULL` and should accept a value between `1` and `15`.
* `salary` should be `DECIMAL(7,2)`, `NOT NULL`
* `location` should be `VARCHAR(50)`, `NOT NULL`, with `DEFAULT` = `'Texas'`
* `staff_type` should be `VARCHAR(20)`, `NOT NULL`, and should accept a value of either `'Junior'` or `'Senior'`.

### **Task 3:**

Create a foreign key that links the `staff` table with the `contracts_infos` table. Apply the referential integrity rule as follows:

* Link each member of staff in the `staff` table to a specific contract in the `contracts_infos` table
* Each `staff_id` in the `contracts_infos` table must also exist in the `staff` table
* The `staff_id` in the `contracts_infos` table should be defined as a `FOREIGN KEY` referencing `staff_id` in the `staff` table.
