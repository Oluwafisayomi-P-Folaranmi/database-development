# **Applying Constraints**

Little Lemon restaurant need to build two tables in their database. That **let customers create accounts and register bookings.** They also need to **apply constraints to the columns in these tables to ensure data consistency and integrity.**

Over the next few minutes, you'll help Little Lemon create these tables and apply the following common constraints: `NOT NULL`, `UNIQUE`, `CHECK`, and `FOREIGN KEY`.

By the end of this lesson, you'll be able to demonstrate how to apply these common constraints in a MySQL database table.

## **Creating the `customers` Table**

The first table that must be created is `customers`, which records customer details. The table requires the following constraints:

- The `PRIMARY KEY` constraint on the `customer_id` column
- The `NOT NULL` constraint on the `full_name` column
- A `UNIQUE` constraint on the `phone_number` column to ensure that each customer has a unique number

Let's get started. Begin with the `CREATE TABLE` command and call the table `customers`. Then add a pair of parentheses. Within the parentheses:

- Define the `customer_id` column as `NOT NULL` and the `PRIMARY KEY`. This ensures that all IDs are unique in each row of the table and that the column does not accept a null or empty value.
- Next, add a `full_name` column with the constraint `NOT NULL`.
- Assign a value of `VARCHAR` with a character limit of 100.
- Then declare the `phone_number` column as `NOT NULL UNIQUE`. This ensures that it only accepts a unique number for each customer.

```sql
CREATE TABLE `customers` (
	`customer_id` INT PRIMARY KEY,
    `full_name` VARCHAR(100) NOT NULL,
    `phone_number` INT UNIQUE
);
```

Finally, execute the statement.

### **Viewing Table Structure**

Now let's view the output by writing and executing the following statement:

```sql
SHOW COLUMNS FROM `customers`;
```

This shows the `customers` table. The table contains all relevant constraints. The columns are defined with `NOT NULL`. Two keys have been declared:

* The `customer_id` column is the `PRIMARY KEY`
* The `phone_number` column only accepts unique values

## **Creating the `bookings` Table and Applying Referential Integrity**

The next task is to apply referential integrity. This ensures that each customer can make a booking in the restaurant and that each booking must be assigned to a specific customer.

In other words, any `customer_id` that exists in the `bookings` table must also exist in the `customers` table. Otherwise, it won't be possible to identify who made the bookings.

When creating the `bookings` table, it's important to focus on the referential integrity constraint and the `CHECK` constraint to limit the number of guests to a maximum of eight.

### **Defining the `bookings` Table**

Begin with a `CREATE TABLE` command, followed by `bookings` and parentheses. In the parentheses, create the following columns:

* `booking_id`
* `booking_date`
* `table_number`
* `number_of_guests`
* `customer_id`

All columns are defined as `NOT NULL` to ensure that each one must accept a value. All columns are also assigned the integer value except `booking_date`, which is assigned a `DATE` value.

```sql
CREATE TABLE `bookings` (
    `booking_id` INT PRIMARY KEY NOT NULL,
    `customer_id` INT NOT NULL,
    `booking_date` DATE NOT NULL,
    `table_number` INT NOT NULL,
    `number_of_guests` INT NOT NULL,
    CONSTRAINT `chk_number_of_guests` CHECK (`number_of_guests` <= 8),
    CONSTRAINT  `fk_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
);
```

* The `booking_id` column is defined as the `PRIMARY KEY`
* The `number_of_guests` column is defined with a `CHECK` constraint that specifies it's `NOT NULL`. Use a less than or equal to (`<=`) operator so that it can only accept a maximum of eight guests
* Next, define the `customer_id` column with the `FOREIGN KEY` constraint
* Then use the `REFERENCES` constraint, so the foreign key references the `customer_id` column in the `customers` table

Now use `ON DELETE CASCADE` and `ON UPDATE CASCADE` options to delete and automatically update the related rows of data in the `bookings` table. However, be aware that these actions depend on the `UPDATE` and `DELETE` operations taking place in the `customers` table.

Click `Enter` to execute the statement.

### **Displaying Table Structure**

To display the table structure, type the following syntax:

```sql
SHOW COLUMNS FROM bookings;
```

The output set result shows all columns are assigned the required constraints and values. The `customer_id` column is `MUL`. This means that it's not a unique key and multiple rows can have the same key value. This makes sense because each customer might make multiple bookings at the same or at different times.

This code also joins the two tables and establishes dependencies between them. If you change or delete the `customer_id` in the `customers` table, then you also update or delete the related record in the `bookings` table.

## **Conclusion**

You should now be able to apply different types of constraints in MySQL databases to maintain data integrity and consistency. Great work.
