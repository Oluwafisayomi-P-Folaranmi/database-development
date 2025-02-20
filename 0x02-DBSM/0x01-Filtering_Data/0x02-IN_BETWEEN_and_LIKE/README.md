# Using `IN`, `BETWEEN`, and `LIKE`

You might already be familiar with filtering data using the `AND` and `OR` operators. But what if you need to perform more complex data filtering tasks? Like filtering data based on a pattern. You can use more logical operators, such as `IN`, `BETWEEN`, and `LIKE`.

Let's begin with a review of the `IN`, `BETWEEN`, and `LIKE` operators.

  + The `IN` operator lets you **specify multiple values** in the `WHERE` clause.
  + The `BETWEEN` operator **selects values within a given range**, these values can be numbers, text, or dates.
  + The `LIKE` operator is used to **filter data based on pattern matching**.


## The `IN` Operator

The `IN` operator requires slightly different syntax than a typical `SELECT` filter statement. After the `WHERE` clause, you must type the column name to which the `IN` operator is applied. You then need to add the `IN` operator and you must also include the set of values within parenthesis.


```sql
SELECT *
FROM table_name
WHERE column_name IN (value1, value2, ...);

```

If the specified columns value of a record matches with any value in the set, then that record will be included in the query results set of the `SELECT` statement.

The `IN` operator is like a shorthand for multiple `OR` conditions. You also can use `NOT IN` to filter the opposite results of those you receive from the `IN` operator.


## The `BETWEEN` Operator

For the `BETWEEN` operator, you must also specify the column name after the `WHERE` clause. The `BETWEEN` operator is then applied along with the two required values. These two values mark the boundary of a range. In other words, they're the beginning and ending values of the range.


```sql
SELECT *
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

```

The operation then selects values within this given range. The values that can be used with the `BETWEEN` operator include numbers, text, and dates. If the specified columns value of a record falls within the value range specified here, that record will be included in the query results set of the `SELECT` statement. Finally, let's look at the `LIKE` operator.


## The `LIKE` Operator

The `LIKE` operator is used to filter data based on pattern matching. The operator is placed after the `WHERE` clause and specified column name. A pattern to be matched against the column data is then added. This pattern can be written using what I refer to as **wildcard** characters. Let's describe some wildcard characters:

  + The first of these is the **percent sign**
    - It represents zero, one, or any numbers or multiple number of characters.

  + The second is the **underscore sign**
    - It represents one single character.

For example, a pattern could be written as `g__%` within a pair of single quotes. So this pattern searches for values that start with the letter `g` and are at least three characters in length.


## `IN`, `BETWEEN`, and `LIKE` Laboratory

In your company's database, is a table called `customer_purchases`. This table contains the data Lucky Shrub need to complete their queries. The data is divided into the following four columns: `customerID`, `customer_names`, `customer_locations`, and `purchases`, the value of each customer's individual purchase. 


### IN

First, Lucky Shrub need to use the MySQL `IN` operator in the `WHERE` clause to identify customers from the location Gila county and Santa Cruz County.


```sql
SELECT *
FROM `customer_purchases`
WHERE location IN ('Gila County', 'Santa Cruz County');

```


### BETWEEN

Now let's check out how the MySQL `BETWEEN` operator functions in the `WHERE` clause. In this example, Lucky Shrub need the details of customers whose purchases are in the range of $1,000 and $2,000. 


```sql
SELECT *
FROM `customer_purchases`
WHERE purchases BETWEEN 1000 AND 2000;

```

The `BETWEEN` operator filters out the records that have a purchase value between `$1,000` and `$2,000` including the beginning and end values.


### LIKE

Finally, let's see how Lucky Shrub make use of the MySQL `LIKE` operator. The `LIKE` operator is used for pattern matching. When used in a `WHERE` clause, it searches a column for the given pattern. This means that it filters out data from the table based on the pattern. It's **often used in conjunction with wildcards for single or multiple characters**.

Your company's **pattern** must be set to find any values that start with `g` and are at least three characters in length. 


```sql
SELECT *
FROM `customer_purchases`
WHERE `Location` LIKE 'G%';

```

The output that's generated contains records with location that start with `G` and are at least two characters in length. Any values that don't match the pattern have been omitted from the table.
