## **Database Optimization?**

***Database optimization is improving the performance of a database system to reduce the time it takes to query, process, and transmit a user's query***. Basically, it's the process of maximizing the speed and efficiency of the database's performance. An optimized database can process a SQL query and return the required data fast. 

***It's also important to note that database performance depends on both hardware and software***. In this lesson, you'll focus on optimizing queries using MySQL software.

#### **Types of SQL Statements**

At this stage of the course, you've encountered a lot of different kinds of SQL statements. These SQL statements can be divided into two categories:

  1. **Data Retrieval Statements** - These return data from the database. These are also known as `SELECT` statements.
  2. **Data Change Statements** - These alter data within the database, such as `INSERT`, `UPDATE`, and `DELETE`.

Both types of statements require different optimization techniques. Later in this module, we'll explore optimization techniques in detail, but for now, let's look at the basics.

### **Optimising Data Retrieval Statements**

Data retrieval statements (`SELECT` statements) require significant optimization efforts. The most common optimization technique is using **indexes**.

***An index is a type of handle that you can use to quickly look up data***. Indexes are created on table columns to speed up searches. You'll learn more about indexes later in this lesson.

#### ***Other Optimization Methods***:

Other methods for optimizing `SELECT` statements include:

  + Targeting specific columns in the `SELECT` command.
  + Efficient use of functions, wildcards, and predicates.
  + Using `INNER JOIN` instead of `OUTER JOIN` where applicable.
  + Deploying `DISTINCT` and `UNION` clauses efficiently.
  + Using the `ORDER BY` clause appropriately to sort results.

### **Optimizing Data Change Statements**

Different methods are required for optimizing data change statements (`INSERT`, `UPDATE`, and `DELETE`). 

#### **Optimization Techniques**

  + **Optimizing `UPDATE` and `DELETE` statements**: Improve the conditions in the `WHERE` clause to limit the number of affected rows.
  + **Optimizing `INSERT` statements**: Perform batch inserts instead of inserting one row at a time. This means inserting multiple rows in a single `INSERT` operation.

For now, you just need to be aware of the distinction between data retrieval and data change statements. You'll explore them in more depth later in this lesson.

### **Conclusion**

Although database optimization can be complex, it's worth the effort. As you've learned, an optimized database offers improved performance with faster turnaround times and reduces unwanted task loads on the database.

By optimizing their database, Lucky Shrub can process their sales data much more quickly and efficiently. They'll avoid any potential issues that could arise from the growth in data.

You should now be familiar with the concept of database optimization along with the different kinds of SQL statements that can be optimized. **Good work!**
