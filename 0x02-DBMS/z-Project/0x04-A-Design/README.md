# Design

Now that you understand some of the different types of database schemas, how do you go about designing one for your project? Designing effective schemas takes thought and practice, as well as a thorough understanding of the problem domain and the systems that will use the data.

The design process looks quite different depending on the type of database you are designing the schema for. Specifically, the design process for static schemas differs from that of dynamic schemas. Practically speaking, these end up aligning to differences between designing for relational databases (static) and non-relational databases (dynamic). We will discuss the former.

## General tips

Although there are differences between schema design for relational and non-relational databases, there are some general tips that are applicable with any schema development. Since many of these are important to the beginning of the design process, it makes sense to discuss these first.

### Learn about your data

One of the first steps in designing schemas should always be to learn about your data and domain. It is impossible to develop a good database design without understanding the information it will manage and context in which it will be used.

While you will likely not know all of the features of your data in the beginning, learning as much as you can about the data that your system is expected to manage is essential for design.

Some questions you should try to answer include:

+ Broadly speaking, what will the data be?

+ Which attributes are important to record?

+ How large will your total dataset be?

+ How rapidly will the system accumulate new data?

+ Will your data be highly regular?

### Understand usage patterns

Similarly, designing a database schema without understanding user requirements is as problematic as it is with other software design. If you are not an expert in the domain in which the data will be used, you need to consult someone who is to guide you on the requirements.

You should ask yourself questions like:

+ Are the most common queries predictable?

+ How many concurrent users or clients will there be?

+ How much data will be touched by typical operations and queries?

+ Will the majority of requests be read queries or write queries?

+ What data will be queried together regularly?

+ Do most operations target individual records or aggregate many records?

### Develop a naming convention

While it might not seem important, designing a naming convention and following it rigorously will help during both development and regular usage.

Naming and styling conventions help minimize the amount of mental work you need to perform when naming new entities. Similarly, conventions allow users to safely assume a pattern when accessing different items within your schemas. Some database systems or types of databases already have popular naming conventions, which you can follow to avoid surprises and avoid the need to develop your own standards.

Some style and naming conventions you might want to consider:

+ How should you use upper and lowercase lettering for systems that are case-sensitive?

+ When should items use the plural of a word versus the singular?

+ Should multi-word names separate words with underscores, dashes, or other delimiters?

+ Should full names always be used or are abbreviations permissible in some cases?

## Designing schemas for relational databases

Relational databases are often considered flexible, general purpose solutions. Their ability to process ad-hoc queries allows the same database to serve different applications and use cases. Because of this, when designing schemas for relational databases, your end goal is usually to represent your data in a way that promotes flexibility while minimizing the opportunity for data inconsistencies to enter the system.

### Developing a logical schema

Relational schema designs often start with a logical schema, as discussed in a previous section.

You map out the data items you want to manage, their relationships, and any attributes important to consider without regard to implementation details or performance criteria. This step is important because it collects all of your data items in one place and allows you to sort through the way they relate to one another on an abstract level.

You can begin sketching out tables that represent specific data items and their attributes. This mapping process is often best represented by **entity-relationship (or ER) models**. ER models are diagrams that visually represent data objects by defining item types and their attributes and then connecting these to map out relationships and dependencies.

ER models are frequently used in early stage schema designs because they are very good at helping you figure out what distinct entities you have, what attributes must be managed, which entities are related to one another, and the specific nature of their relationship. Using ER model diagrams to represent your logical schema gives you a solid plan for what you want your database design to be without commenting on implementation-specific details.

### Developing a physical schema

Once you have a logical schema, your next step is to figure out specific implementation details by creating a physical schema (as discussed in a previous section). The physical schema will determine exactly how you want to commit your plan using the database structures and features available to you.

The first step is often to go through each of your database entities and determine your primary key field. The primary key is used to uniquely identify each record within a table as well to bind records together from different tables. When a relationship exists between two entities in the logical schema, you will have to connect the two tables in the physical schema by referencing the primary key in one table as a foreign key in the other. The direction of this relationship will impact the performance and ease in which you can join different entities together when using your database.

Another consideration you will want to think through during this stage are the predicted query patterns. Certain tables and fields within these tables will be accessed much more frequently than others. These "hot spots" are good candidates for database indexes. Database indexes significantly speed up retrieval of commonly accessed items at the cost of worse performance during data updates. Determining which columns to index initially will help you balance these concerns and define the most critical places for indexes in your system.

### Normalizing your data structures

During this process, you might find that it's easier to extract certain elements from logical entities into their own independent tables. For instance, you may wish to extract shipping address from a customer so that multiple shipping addresses can be associated with a single customer and so that product orders can reference a specific address. These changes can be thought of as part of a process is called normalization.

Database normalization is a process that ensures that your database represents each piece of data once and doesn't allow updates that would result in inconsistencies. Normalization is a huge topic that, for the most part, is outside of the scope of this guide, but you part of the physical schema design process involves figuring out the level of normalization to seek and transforming data entities as necessary to achieve that goal.