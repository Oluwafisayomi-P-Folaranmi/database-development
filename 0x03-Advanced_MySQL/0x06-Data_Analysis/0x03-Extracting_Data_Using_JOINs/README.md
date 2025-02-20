# Extracting Data Using JOINs

You can query these tables by using an inner joint to target the following data. The `ClientID` and `ContactNumber` columns from the `Clients` table; the `OrderID`, `Quantity` and `Date` columns from the `Orders` table; and the `NumberOfItems` column from the `Products` table.


```sql
SELECT Clients.ClientID, Clients.ContactNumber,
	Orders.OrderID, Orders.Quantity, Orders.Date,
	Products.NumberOfItems AS 'Items in stock' 
FROM Clients 
INNER JOIN Orders 
INNER JOIN Products 
ON(Clients.ClientID = Orders.ClientID 
	AND Orders.ProductID = Products.ProductID) 
WHERE (Orders.Quantity >= 10 AND Date > '2020-09-05' AND Products.NumberOfItems >= 50);

```
