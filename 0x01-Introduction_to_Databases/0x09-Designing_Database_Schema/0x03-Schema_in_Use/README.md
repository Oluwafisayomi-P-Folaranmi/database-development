# **Schema in Use**

By the end of this lesson, you'll know how to create a simple database schema. Using SQL, you'll do this by building the schema for a shopping cart database consisting of three tables.

## **Creating a Simple Database Schema with SQL**

### **Step 1: Create a New Database**

Let's start by creating a new database called `shopping_cart_TB`.

```sql
CREATE DATABASE `shopping_cart_TB`;
```

After executing this statement, the `shopping_cart_TB` database appears in the left-hand Explorer. You can now create tables inside this database.

### **Step 2: Create the `customer` Table**

This table stores the following information about each customer:

* `customer_id`
* `name`
* `address`
* `email`
* `phone_number`

SQL definition:

```sql
CREATE TABLE `customer` (
    `customer_id` INT PRIMARY KEY,
    `name` VARCHAR(100),
    `address` VARCHAR(255),
    `email` VARCHAR(100),
    `phone` VARCHAR(10)
);
```

The `customer_id` is designated as the primary key of the table using the `PRIMARY KEY` keyword.

### **Step 3: Create the `product` Table**

This table stores:

* `product_id`
* `name`
* `price`
* `description`

SQL definition:

```sql
CREATE TABLE `product` (
    `product_id` INT PRIMARY KEY,
    `name` VARCHAR(100),
    `price` NUMERIC(8, 2),
    `description` VARCHAR(255)
);
```

### **Step 4: Create the `cart_order` Table**

This table holds:

* `order_id`
* `customer_id`
* `product_id`
* `quantity`
* `order_date`
* `status`

SQL definition:

```sql
CREATE TABLE `cart_order` (
    `cart_order_id` INT PRIMARY KEY,
    `customer_id` INT,
    `product_id` INT,
    `quantity` INT,
    `order_date` DATE,
    `status` VARCHAR(100),
    FOREIGN KEY (`customer_id`) REFERENCES `customer`(`customer_id`),
    FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`)
);
```

## **Understanding Primary and Foreign Keys**

Before moving forward, let’s quickly discuss what primary and foreign keys are:

* A **Primary Key** uniquely identifies each row in a table.
* A **Foreign Key** establishes a link between the data in two tables.

In the `cart_order` table, the fields `customer_id` and `product_id` also appear in the `customer` and `product` tables, respectively. These fields are used as foreign keys in `cart_order` to reference the primary keys in their respective tables.

This relationship allows the `cart_order` table to associate orders with specific customers and products.

## **Finalizing the Schema**

After executing the table creation statements, the tables will appear nested beneath `shopping_cart_TB` in the left-hand Explorer panel.

## **Summary**

In this lesson, you learned the steps for creating a simple database schema using SQL:

* Creating a database
* Defining tables and their fields
* Setting up primary and foreign keys

The same process applies to both small and large-scale databases.
