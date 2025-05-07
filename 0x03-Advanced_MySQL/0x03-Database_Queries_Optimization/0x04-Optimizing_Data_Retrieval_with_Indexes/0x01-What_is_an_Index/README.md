## **What is an Index?**

An **index** is a **data structure** that helps MySQL **maintain pointers** to sorted data.  

Although indexes **are not visible** in the database, you can **visualize them** as a **table with two columns**:  

| Pointer | Sorted Data (Column Values) |
|---------|-----------------------------|
| →       | Client Name (Alphabetical)  |

For example, *Lucky Shrub* can create an **index** where:  

- **One column stores pointers** to rows.  
- **Another column stores sorted client names** for **faster searching**.

### **Types of Indexes in MySQL**

There are **two main types of indexes** in MySQL:  

  1. **Primary Index (Clustered Index)**  
     - Stored **within the table itself**.  
     - Automatically created when you **define a `PRIMARY KEY` or `UNIQUE` constraint**.  
     - **Determines the physical order** of rows in the table.  

  2. **Secondary Index (Non-Clustered Index)**  
     - Created **using the `CREATE INDEX` statement**.  
     - **Does not affect row order** in the table.  
     - Allows MySQL to **quickly locate values** in columns that are frequently searched.
