## **Using Transactions: Updating Orders and Stock**

Lucky Shrub needs to update sales and stock levels in their database. A client with **ID = Cl1** has just placed an online order for **10 bags of artificial grass** (`ProductID = P1`). There are currently **100 bags in stock**, so this number must be updated to **90** once the client's order is processed.

### **Step 1: Start the Transaction**

```sql
START TRANSACTION;
```

### **Step 2: Insert the Order**

```sql
INSERT INTO `orders` (`ClientID`, `ProductID`, `Quantity`)
VALUES ('Cl1', 'P1', 10);
```

### **Step 3: Update the Stock Level**

```sql
UPDATE `products`
SET `Stock` = Stock - 10
WHERE `ProductID` = 'P1';
```

### **Step 4: Verify the Transaction**

```sql
SELECT `o`.`ClientID`, `o`.`ProductID`, `o`.`Quantity`, `p`.`Stock` 
FROM `orders` `o` 
INNER JOIN `products` `p`
ON `o`.`ProductID` = `p`.`ProductID`;
```

### **Step 5: Error Handling**

If you notice an issue (e.g., the wrong `ClientID` was entered), **rollback** the transaction:

```sql
ROLLBACK;
```

### **Step 6: Re-Execute with Correct Data**

Re-run the correct SQL statements and **commit** the transaction:
```sql
COMMIT;
```
