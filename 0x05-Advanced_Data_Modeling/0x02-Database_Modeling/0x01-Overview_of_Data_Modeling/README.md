# **Overview of Data Modeling**

When developing a database system, you need to make sure that it operates efficiently and that you can extract information from it quickly. The best way to create such a system is to first design a data model. **With a data model, you can plan how data is stored and accessed within your database before you create the database system.** In this lesson, you'll explore the concept of data modeling and review different levels of data models.

The **jewelry store Mangeta and Gallo or M&G,** are in the process of designing and building a database system to store data on customers, products, and orders. But their current design is very inefficient. However, **if M&G first focuses on creating a suitable database model, then they can design a more simplified and logical database system.**

**Explore the basics of database modeling, then see if you can assist M&G.**

## **What is Data Modeling?**

Let's begin with the term **data modeling**. **A data model provides a visual representation of data elements and shows how they relate to one another.** In other words, it demonstrates how your database system is structured. **This structure helps you to understand how data is stored, accessed (queried), and updated within the database.** It also ensures a consistent structure and high-quality data.

**Therefore, the Data Modeling process is used to develop all kinds of databases, particularly entity relational databases.** These databases are planned with the use of an **entity relationship diagram.**

## **Levels of Data Modeling**

There are three different levels of data modeling:

1. **Conceptual Data Models**
2. **Logical Data Models**
3. **Physical Data Models**

Let's take a few moments to explore these different types.

### **Conceptual Data Models**

You might already be familiar with conceptual data models from previous courses. **The purpose of a conceptual model is to present a *high (abstract) level* overview of the database system through a visual representation of the data elements (entities) it contains and their relationship to one another.**

**A conceptual data model defines the most general, and business-focused version of a database. It uses high-level categories (called "entities") to represent the core things the system must track — without diving into database specifics.** Breaking It Down:

#### **Conceptual Data Model**:

* It's the **first and most abstract level** of data modeling.
* Focuses on **what** data is important to the business—not how it will be stored.
* Used to **communicate with business stakeholders**.

#### **High Abstract Level**:

* "High abstract level" means it **does not include technical details** like table structures, data types, or keys.
* Instead, it defines **broad categories or concepts**, often called **entities**.

#### **Entities**:

* An **entity** represents a **real-world object, or concept** relevant to the domain.
* Examples: *Student*, *Course*, *Book*, *Customer*, *Rental*.
* Each entity usually has **attributes**, like: *name*, *ID*, *email*, etc.

Furthermore, **M&G can make use of a conceptual data model to create their database system. They can present their customers, products, and orders as entities, then ***document*** how these entities are related.** Moving from here, **the conceptual model provides the basis for the logical data model.**

### **Logical Data Models**

Again, you should have a basic familiarity with examples of a logical data model from previous courses. **The logical data model builds on the conceptual model by providing a more detailed overview of the entities in their respective relationships. It identifies the attributes of each entity, defines the primary keys, and specifies the foreign keys.**

A **logical data model** is a **detailed, technology-independent blueprint** of the data that includes **entities, their attributes, and the relationships between them**. It builds upon the conceptual model by adding more **structure and precision**, such as:

* Attribute names and data types (e.g., `name: VARCHAR`, `age: INTEGER`)
* Primary and foreign keys
* Cardinality and participation (e.g., one-to-many relationships)
* Normalization rules (to eliminate data redundancy)

However, it **does not include physical storage details** like indexes, partitions, or actual database syntax.

**In Short**: A logical data model is a **refined and structured representation of the data**, showing how entities relate and what data each one holds, but still independent of the database system used for implementation.

**M&G can build on their conceptual data model by using it to create a logical data model.** Their logical data model must include all attributes required for each entity. Like a list of the attributes each entity contains. It then needs to define which of these columns serve as the primary key for each table.

For example, **the *client ID column* is the primary key for the client's table.** M&G's logical data model also specifies the foreign keys they're using to create relationships between the tables. In the current model, ***the "client table"* is connected to *the "orders table"* through the *"client ID" foreign key*.**

### **Physical Data Models**

**A physical data model is used to create the internal SQL schema of the database, which is implemented in the *database management system*.** The physical data model must outline features like the datatypes, constraints, and attributes.

A **physical data model** is the **most detailed level** of data modeling. It defines **how the data will actually be stored** in a specific database system (like MySQL, Oracle, or PostgreSQL). It translates the logical model into **database-specific structures**, including:

* Exact table names and column definitions (with data types, sizes, constraints)
* Primary keys, foreign keys, indexes
* Storage details (e.g., tablespaces, partitions)
* Performance optimizations (e.g., indexing strategies, denormalization if needed)
* Security and access rules (e.g., who can read/write specific tables)

**In Short**: A physical data model is a **precise, database-specific plan** for implementing the data structure in the real world—it’s what the database engine actually uses.

For example, M&G need to define a specific datatype for each attribute, like `VARCHAR(n)` for the full name attribute in the client's table, or `INTEGER` for the contact number attribute. They also need to apply relevant constraints. They can impose a constraint of `NOT NULL` for each column in the client's table to make sure that each one contains data.

There are also a range of tools available to generate and execute the internal schema of a physical data model. You'll cover these tools in later lessons.

## **Conclusion**

You should now be familiar with the **basics of data modeling** and the importance of the role that it plays in the development of a database system. You should also be able to differentiate between different levels of data models and explain how each one contributes to the creation of a database system.
