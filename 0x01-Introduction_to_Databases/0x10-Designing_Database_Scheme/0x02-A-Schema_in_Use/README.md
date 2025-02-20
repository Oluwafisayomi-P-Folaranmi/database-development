# Schema in Use

By the end of this lesson you'll know how to create a simple database schema. Using SQL you'll do this by building the schema for a **shopping cart** database consisting of three tables.

Let's start by creating a new database called `shopping_cart_db`.

```SQL
CREATE DATABASE shopping_cart_db;

```

Now I can create the tables inside this database. First I need to create the `customer_table` which stores the following information on each customer: `customer_id`, `name`, `address`, `email`, and `phone` number to create this table.

```SQL
CREATE TABLE customer (
	customer_id INT,
	name VARCHAR(100),
	address VARCHAR(255),
	email VARCHAR(100),
	phone VARCHAR(10),
	PRIMARY KEY (customer_id)
);

```

I used to `CREATE TABLE` keyword. Also note that I've used the `PRIMARY KEY` keyword on the `customer_id` column. This designates that field as the primary key of the table. A role you'll learn more about soon.

Next is the `product_table` which stores the `product_id`, `name`, `price`, and `description`. I can specify this table as follows.

```SQL
CREATE TABLE product (
	product_id INT,
	name VARCHAR(100),
	price NUMERIC(8, 2),
	description VARCHAR(255),
	PRIMARY KEY (product_id)
);

```

The `product_id` is set as the primary key within this table.

And finally there's the cart order table which holds the order ID. Customer ID. Product ID. Quantity, order, date and status. This table is set up as follows.

```SQl
CREATE TABLE cart_number (
	order_id INT,
	customer_id INT,
	product_id INT,
	quantity INT,
	order_date DATE,
	status VARCHAR(100),
	PRIMARY KEY (order_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (product_id) REFERENCES product(product_id)
);

```

`order_id` is the primary key here. However, this table also introduces something new in the form of two foreign keys.

Before moving forward, let's quickly discuss what primary and foreign keys are. You may have noticed that the `cart_order` table contains the `customer_id` and `product_id` fields. These same fields are also found in the other two tables. This is because these fields in the `cart_order` table are directly linked to the same fields in the corresponding tables. To establish this relationship, each table must contain a primary key. The referencing table then uses the `FOREIGN KEY` keyword that pointed to the external source table or the referenced table. You will learn more about primary and foreign keys in greater detail in a later lesson. But for now let's return to the shopping cart database example.

All primary keys have been set up. So the foreign keys for the `cart_order` table. Come next, I create the first one by using the `FOREIGN KEY` keyword, along with the `customer_id` column name to link it to the `customer_id` field in the customer table, I then used a `REFERENCES` keyword followed by the source table name, `customer` and then `customer_id` in parenthesis.

Creating a foreign key for `product_id` is similar but with `product` and `product_id` references. So I used the `FOREIGN KEY` keyword and name it `product_id`. I then reference it in the product source table, `product`.

In this lesson, you learned the steps for creating a simple database schema using SQL. The same process applies for both small and large scale databases.