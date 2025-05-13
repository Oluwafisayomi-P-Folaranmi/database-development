# String Functions Laboratory

String functions are used to manipulate string values. Here's a few examples of some commonly used string functions.
   
   + `CONCAT()`:
     - used to add several strings together.
   + `SUBSTR()`:
     - extracts a segment of a string from a parent string.
   + `UCASE`:
     - converts a string to uppercase, and
   + `LCASE`:
     - lowercase converts a string to lowercase.


### `CONCAT()`

A very simple example of a concatenation function is seen below:


```sql
SELECT CONCAT("string1", "string2")
FROM table
WHERE condition;

```

A more complex example of the concatenation function might involve extracting string values from two separate tables. You can pass their arguments in the `SELECT` clause, identify the two tables they required in the `FROM` clause, and specify the condition in the `WHERE` clause so that SQL filters the required data from the combination of the two tables.


```sql
SELECT CONCAT("name", '-' "quantity")
FROM table1, table2
WHERE table1ID = table2ID;

```


### `SUBSTR()`


```sql
SELECT SUBSTR("string", <starting index>, length)
FROM table
WHERE condition;

```

The syntax of a substring function is similar, but there are three arguments contained within the parenthesis. The first of these is the column of the string itself. The next one is the start index, the point in the string at which the substring must begin, and length refers to the length of the string portion that must be extracted.


### `UCASE` and `LCASE`

Maybe your company often convert the values in one column of a table to uppercase, and the values in the second column to lowercase. Here's how they perform this task.


```sql
SELECT UCASE("string1"), LCASE("string2")
FROM table;

```


## String Functions Laboratory

Let's see how to make use of string functions in a MySQL database. The item details are in the items table and the order details are in the orders table. The items table records information on items in inventory within the following columns: `ItemID`, `name`, and `cost`. The orders table records data on deliveries within the following columns: `OrderID`, `ItemID`, `quantity`, `cost`, `OrderDate`, `DeliveryDate`, and `OrderStatus`.


### `CONCAT`

As you learned earlier, say your company needs a list of item names and their available quantities ordered in the format: item name, order quantity. You can extract the required data from these tables using the concatenation string function.


```sql
SELECT CONCAT(Name, '-', Quantity)
FROM `jewelry`, `orders`
WHERE orders.ItemID = jewelry.ItemID;

```


### `UCASE` and `LCASE`

The next task is to retrieve all string values in the order status column of the orders table in both upper and lowercase. To retrieve all values in uppercase:


```sql
SELECT UCASE(OrderStatus)
FROM `orders`;

```


### `SUBSTR`

As part of the next task, we are reviewing an order from a client. The client's table records key information on clients and stores it in the following columns, the client ID column in which the required client is assigned an ID of one, the client name, address, and contact number columns. You can retrieve the information M&G need by using the substring function to extract the relevant part of the string from the tables client's name column value.


```sql
SELECT SUBSTR(ClientName, 1, 6) 
FROM `clients`;

```

Run the query to extract the client's first name.
