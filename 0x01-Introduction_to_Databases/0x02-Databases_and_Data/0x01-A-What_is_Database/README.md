# What is a database?


We all use data and databases in our daily online lives. For example, uploading photos to our social media feeds, downloading files at work, and playing games online, are all examples of database usage. What exactly is data and how does it interact with the database?


## What is Data 

In basic terms, data is facts and figures about anything. For example, if data were collected on a person, then that data might include their **name**, **age**, **email**, and **date of birth**. Or the data could be facts and figures related to an online purchase. This could be the: **order number**, **description**, **order quantity**, and **date**, and even the **customer's email**.


## What is a Database? 

Data is essential for both individuals and organizations, and in our digital age, it's primarily stored in databases. These electronic storage systems systematically organize and manipulate data to enhance manageability, efficiency, and security. **Banks** utilize them to manage **customer information**, **bank accounts**, and **transactions**, while **hospitals** rely on databases for **patient**, **staff**, and **laboratory data**. 

You might wonder, what does a database actually look like? Essentially, it resembles systematically organized data, often resembling a spreadsheet or table. Systematic organization means data is categorized by identifiable elements or attributes, such as age, height, or hair color. These elements are stored in entities, akin to tables, with rows and columns holding data specific to each element. Entities represent relational elements, which can be physical (like an employee or product) or conceptual (like an order or invoice), and they store data in a table-like format corresponding to the element's attributes. 

An online store might store customer data in a **customer** entity, which includes attributes like: **first name**, **last name**, **date of birth**, and **email**. They could also have product data stored in a **product** entity against attributes like: **product code**, **description**, **price**, and **availability**. In the relational database world, these entities are known as relations or tables. The attributes become the columns of the table. Each table row represents an instance of that entity.

As an example, let's take the entities, **customer** and **product** from the online store example that you just explored. These two examples could be combined into a list of orders the store received from his customers. Within a database, this data could be rendered as an order table or entity. The data can be organized into rows that contain a unique order number. The name of the customer who placed the order, the product that they ordered, and the price of that product.

There are many ways to organize data in a database. Relational databases aren't the only kind of databases that you'll encounter. As a Database Engineer, you'll work with many different types of databases. Here's a few common examples of other types of databases.


### Object-oriented database

An object-oriented database is where data is stored in the form of objects instead of tables or relations. The database could render authors, customers, books, and publishers as classes like sets or categories. The objects or instances of these classes would then hold the actual data.


### Graph databases

Graph databases store data in the form of nodes. In this case, entities like customers, orders, and products are represented as nodes. The relationships between them are represented as edges.


### Document databases

Finally, there's document databases where data is stored as JSON or JavaScript Object Notation objects. The data is organized into collections like tables. Within each collection are documents written in JSON that record data. 


## Database Storage

Where are the databases themselves stored? A database can be hosted on a dedicated machine within the premises of an organization, or it could be hosted on the Cloud. 

Cloud databases are currently a more popular choice. This is because they allow you to store, manage, and retrieve data to a Cloud platform and access data through the Internet. They all provide a lower-cost option for data management and other similar options.
