# Complex Stored Procedures

In the products table in our sql script, your company needs to determine the current cost of each of their products ahead of their upcoming sale. They must identify all products that cost less than $50, so they can add an appropriate discount. They need to identify all products that cost more than $50 for further discounts. The required data is stored in the products table in their database.

You can help them to complete this task using a complex stored procedure. First, you need to use a delimiter command, so that MySQL can compile the code in a begin-end block as one compound statement. 


```sql
DELIMITER //
CREATE PROCEDURE GetProductSummary(OUT NumberOfLowPricedProducts INT, OUT NumberOfHighPricedProducts INT)
BEGIN
SELECT COUNT(ProductID) INTO NumberOfLowPricedProducts FROM `Products` WHERE `Price` < 50;
SELECT COUNT(ProductID) INTO NumberOfHighPricedProducts FROM `Products` WHERE `Price` >= 50;
END

```

As the parameters are in the `OUT`, they output the low-priced products and high-priced products outside of the procedure. They also store the output values in the variables. The logic consists of two select statements followed by a count command that targets the product ID column within the products table. The first statement returns the ID of all products that cost less than $50. The second statement returns all products that cost more than $50.

To execute the procedure, use the `CALL` command as usual.


```sql
CALL GetProductSummary(@NumberOfLowPricedProducts, @NumberOfHighPricedProducts);

```

Using the `SELECT` command, the output results shows the total number of low and high-price products.


```sql
SELECT @NumberOfLowPricedProducts, @NumberOfHighPricedProducts;

```
