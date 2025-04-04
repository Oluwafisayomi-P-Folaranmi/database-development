# Finding Entities

When building a database, there's often a lot of different tables that you'd need to consider including. But how do you determine what to include and what to exclude? The answer is to identify the entities you're interested in maintaining data on. In this lesson, you'll learn how to explain the meaning of entities in a relational database, differentiate between attribute types, and be able to identify entities and their attributes. Let's begin by exploring what an entity is.

An entity can be described as an object that has properties which define its characteristics. An entity can be anything that represents a single object in a database, such as a place or a person. In a relational database system, each interesting object in a project could be considered an entity. For example, a customer or individual. There are also different types of attributes in a relational database system. These include:

   + Simple attributes,
   + Composite attributes, and
   + Single-valued attributes.

There are also:

   + Multi-valued attributes,
   + Derived attributes, and
   + Key attributes.

Let's explore these attributes in more detail using the example of a student table in a relational database system.

<img alt="image" src="img_001.png" width="100%" height="50%"/>

---

A **simple attribute** is an attribute that cannot be classified further. In the example of the student records, the grade values cannot be classified further.

A **composite attribute** is an attribute that can be split into different components. For example, the name value of each student could be split into sub-attributes such as first and last name.

A **single-value attribute** can only store one value. In the student table example, the date of birth column can only contain one value per student. These values can be defined as a single-valued attributes.

With a **multi-valued attribute**. The attribute can store multiple values in the field. For example, the student email column could hold more than one email per student; a college email address, and a personal email address. However, this practice should be avoided in a relational database.

A **derived attribute** is where the value of one attribute is derived from another. In the student table, the age of each student can be derived from the respective date of births.

Finally, there's the **key attribute**. This is a field that holds a unique value used to identify unique entity record. A good example, are the values contained in the student ID column. Each ID is a unique value which can be used to obtain data about a specific student.
