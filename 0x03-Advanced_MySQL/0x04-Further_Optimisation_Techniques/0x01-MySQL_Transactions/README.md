# MySQL Transaction

As a database engineer, you should use MySQL transaction any time you have a **critical activity** to complete. If any error occurs during the execution of the query, then you can use this technique to restore your database to the original state.

This is a particularly useful technique to consider when writing a series of related queries that must all execute as intended to achieve an expected outcome.

### **The Importance of Transactions**

Lucky Shrub is updating new sales in their `orders` table and the stock levels in their `products` table. To carry out this transaction, Lucky Shrub needs to create and execute several different queries. However, they could encounter an error at any point in the process.  

For example, the Internet connection could fail while inserting data into the table, resulting in invalid data or an incomplete transaction. If such an event occurs, Lucky Shrub can **roll back** their database and restore it to its original state using **transaction commands**.
