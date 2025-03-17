# Triggers and Events

As an engineer working on the data access layer of your company's application, you'll often need certain actions to occur automatically when specific events take place in your database, like:

  + when data is inserted,
  + updated or
  + deleted from a table.
  
But how can you make sure that these actions happen automatically and avoid the need to rewrite code each time they must be invoked, you can do this with the use of ***triggers***. Here, you'll learn what ***MySQL triggers*** are and how to code and use them.

Lucky Shrubs sales team are adding discounts to products, however, any discounts over 25% must be reviewed by a manager. This means that the sales team needs to add a trigger to the database that flags items when they're assigned a discount above the 25% threshold.
