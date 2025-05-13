# **Types of Data Models**

When creating a database system, you first need to design a data model. But **there are many kinds of data models that you can choose from.** How can you determine which one is best for your database system. In this lesson, you'll learn how to choose between different types of database models and find out how they can be used to create databases.

Mangata and Gallo or M&G, need to build their database system so that it meets the needs of their business. They need to choose a data model that fulfills their data requirements. Explore the different types of data models, including their advantages and disadvantages, and see if you can help M&G figure out which model is best for their business.

There are many models that can be used to build a database system. In this lesson, you'll explore the following data models:

- The **relational data model**  
- The **entity relationship model**  
- The **hierarchical data model**
- The **object oriented model**
- The **dimensional data model** 

## **The Relational Data Model**

Let's begin with a look at the relational data model. You might already be familiar with the relational data model from previous courses. It's a popular and widely used database model. It represents the database as a collection of relations. Each relation is presented as a table that stores information in the form of rows and columns.

A key advantage of this model is that it's much simpler to use than other models. You can quickly identify and access data. But the relationships between the data in this model can become more difficult to navigate with complex relational database systems. You might also need to structure and organize the data differently when performing data analytics.

## **The Entity Relationship Model**

Next is the entity relationship model. This model is similar to the relational data model. The key difference is that you can present each table as a separate entity by assigning each one its own set of attributes. The model also covers many different types of relationships between entities such as one-to-one, one-to-many, and many-to-many relationships.

For example, M&G can use an entity relationship model to visualize the relationship between their clients and orders tables. The two entities are connected through the client ID column using a one-to-many relationship. In other words, one or more orders belong to a specific client.

## **The Hierarchical Data Model**

There's also the hierarchical data model. The hierarchical data model organizes data in a tree-like or parent-child structure. Each record of data has a parent node, and it can also have its own child node. The main disadvantage is that it can only be used to record one-to-many relationships between nodes. Each child node can only have one parent node.

M&G can use this model to depict the relationship between their orders and clients entities. Clients are connected to their root node and each order is connected to the related client. While each client can be connected to many orders. M&G can continue to add nodes as required.

## **The Object Oriented Model**

Another option for database developers is the object oriented model. This model is based on the object oriented concept. This is where each object is translated to a class that defines the objects characteristics and behavior.

A key advantage of this model is that you can define different types of associations between objects, like aggregations, compositions, and inheritance. This makes object oriented databases suitable for complicated projects that require an object oriented approach.

This model also relies heavily on the inheritance feature. This is where one class inherits its attributes from another. You can create a parent or superclass, also called a base to hold the common attributes. Each child class that follows inherits the attributes of the parent class.

However, if you do make use of this model, then you need a good understanding of object oriented principles and related programming skills.

M&G can make use of an object oriented model to retain attributes between classes. They can create a base or parent class called person entity, that contains attributes and operations. The staff and client classes then inherit these attributes and operations from the person entity class, so each staff member and client are a person.

## **The Dimensional Data Model**

Finally, there's the dimensional data model. This model is based on two key concepts, dimensions and facts. Facts are measurements obtained from a process. For example, sales facts obtained from M&G's business data. Dimensions define the context of these measurements, like a specific sales period.

Sales facts measure how many quantities of a particular product M&G sold in each week. The key advantage of this model is that it optimizes the database for faster data retrieval and restructures data for more efficient data analytics.

You'll explore the dimensional data model in more detail later in this course.

## **Conclusion**

You should now be familiar with the different types of data models that can be used to build a database system, and some of their key advantages and disadvantages. You're making great progress on your database modeling journey.
