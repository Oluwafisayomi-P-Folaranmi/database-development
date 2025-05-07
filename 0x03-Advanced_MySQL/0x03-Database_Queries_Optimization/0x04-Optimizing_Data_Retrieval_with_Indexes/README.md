# **Optimizing Data Retrieval with Indexes**

When performing **data retrieval**, MySQL often **scans an entire table** even though it only needs to locate specific column values.  

  - These queries take **a long time to execute** and **add extra load** on the database.  
  - MySQL can **execute queries faster** using **indexes** that target specific column values.  

In this lesson, you'll **learn how to use indexes to speed up data retrieval**.  

## **Lucky Shrub's Scenario**

At *Lucky Shrub*, the **sales department** needs to retrieve **client contact numbers** from the database.  

  - The **database contains thousands of clients** and phone numbers to sort through.  
  - To speed up this process, *Lucky Shrub* can make use of **indexes**.  

Before exploring how indexes **help Lucky Shrub**, let's first understand what indexes are.
