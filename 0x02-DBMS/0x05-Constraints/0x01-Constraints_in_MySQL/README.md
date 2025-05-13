# **Constraints in MySQL**

Little Lemon Restaurant have built two new tables in their database that allow customers to **create accounts** and **register bookings.** To make sure that these tables work as required, the restaurant has set up constraints which ensure that the tables only accept valid data.

Over the next few minutes, you'll learn about the concept of constraints in MySQL by exploring how Little Lemon have made use of them in their database. And by the end of this lesson, you'll be able to identify the main types of constraints and explain how they function and explain the MySQL `ON DELETE CASCADE` and `ON UPDATE CASCADE` options.

## **What Are Constraints?**

Let's begin with an overview of what database engineers mean by the term constraints. When creating a table, you might decide that each column must hold a unique value in each row of the table like a phone number. You can enforce this rule using the `UNIQUE` constraint which prevents any violation of the rule whenever data is inserted or updated in your database.

## **Main Types of Constraints in MySQL**

There are three main types of constraints in MySQL database, which can be used to enforce these rules:

1. **Key Constraints** – Apply rules to key types.
2. **Domain Constraints** – Govern the values that can be stored for a specific column.
3. **Referential Integrity Constraints** – Establish rules for referential keys.

Let's take a few moments to explore each of these three MySQL constraint types and discover how they're used by Little Lemon in their database.

## **Key Constraints**

As you learned in the previous course, **all tables include different types of keys, like primary keys and foreign keys. You can use constraints to establish rules for these keys.** For example, the `PRIMARY KEY` constraint can be used to specify that one or more column values must always be unique and they cannot accept a `NULL` value.

Little Lemon’s database contains a table called `customers`. This table records key data on customer bookings using the `PRIMARY KEY` constraint. The table has three columns called: `customer_id`, `full_name`, and `phone_number`.

`customer_id` is defined as the primary key which returns data on the table's unique records. Thanks to the **primary key constraint,** these column values must always be unique and it can never accept null value. In other words, every row in the column must hold the customer ID and all customer IDs must be unique.

## **Domain Constraints**

Next, let's look at **domain constraints.** As you learned earlier, these are special rules defined for values that can be stored for a certain column.

Little Lemon’s database contains a `bookings` table that records data on customer bookings. However, the restaurant can only facilitate a maximum of eight guests per booking. So they enact the **SQL `CHECK` constraint** on the `number_of_guests` column. This limits the value range that can be placed in the column, which means the table rejects any numeric values greater than eight.

You can use the following SQL code using **in-line**:

```sql
CREATE TABLE `bookings` (
    `customer_id` INT,
    `number_of_guests` INT CHECK (`number_of_guests` <= 8)
);
```

You can also explicitly specify the constraint as seen below using **table-level**:

```sql
CREATE TABLE `bookings` (
    `booking_id` INT PRIMARY KEY,
    `customer_id` INT,
    `booking_date` DATE NOT NULL,
    `table_number` INT NOT NULL,
    `number_of_guests` INT CHECK (`number_of_guests` <= 8),
    CONSTRAINT `chk_number_of_guests` CHECK (`number_of_guests` <= 8)
);
```

## **Referential Integrity Constraints**

Finally, let's explore referential integrity constraints. You learned earlier that **this type of constraint establishes rules for referential keys,** but how exactly does this work?

Basically, in a referential integrity constraint there are two types of tables:

- A **referenced table (parent table)** that holds a `primary key` (it is the **inverse side** in ORM), and
- A **referencing table (child table)** that contains a `foreign key` (it is the **owning side** in ORM).

The value of the foreign key column that exists in the referencing table must always exist in the referenced table. Otherwise, a connection can't be established between the two tables.

To understand this better, let's explore the example of the related tables in Little Lemon’s database in the form of an entity relationship diagram. Little Lemon’s database includes two related tables:

- The `customers` table that holds data on customers, and
- The `bookings` table that records information on customers' bookings with the restaurant.

**Each booking in the `bookings` table must relate to a specific customer in the `customers` table. Otherwise, the restaurant can't identify who made the bookings.** And this also means that each customer must already be registered in the `customers` table before they can make a booking in the `bookings` table.

**The `customer_id` column in the `bookings` table is defined as the foreign key.** This is the attribute that joins the two tables together and establishes dependency between them.

### **Referential Integrity and Cascading Options**

This means that **if a row of data is altered or deleted in the `customers` table, then this action destroys the related row of data in the `bookings` table.** In other words, deleting a row of data from the `customers` table violates the referential integrity rule and this results in an error message from MySQL, warning that the action directly impacts the `bookings` table.

**So, when you work with the `customers` table, how can you make the necessary required changes to the `bookings` table without violating the referential integrity constraint?**

In this instance, you can use the `ON DELETE CASCADE` option. This option automatically deletes the related rows of data from the `bookings` table.

And if you want to update a primary key value in the `customers` table, you can use the `ON UPDATE CASCADE` option to automatically update the related rows in the `bookings` table.

You'll discover more about these options in a later lesson.

## **Conclusion**

You should now be able to:
- Identify the main types of constraints and explain how they function
- Explain the MySQL `ON DELETE CASCADE` and `ON UPDATE CASCADE` options

Well done.
