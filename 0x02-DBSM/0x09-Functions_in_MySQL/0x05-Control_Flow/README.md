# Control Flow Functions Laboratory

Your company needs to determine which items in their inventory are turning a profit and which items are making a loss. They can use a control flow function to carry out this task.

Control flow functions let you evaluate conditions and determine the execution path or flow of a query. The most common control flow function used in a MySQL database is the `CASE` function.


### `CASE`

The case function runs through a set of conditions contained within a case block and returns a value when the first condition is met.


```sql
CASE
	WHEN condition1 THEN result1
	WHEN condition2 THEN result2
	WHEN conditionN THEN resultN
	ELSE result
END

```

If no conditions are true, then it returns the value specified in the else clause. If there's no else clause, and no conditions are true, it returns null. For example, your company can use the case function to identify which items in their inventory are loss-making and which ones have turned a profit.

Any items with a value less than or equal to $25,000 are considered loss-making. Any items with a higher value are viewed as profitable.


## Control Flow Functions Laboratory

Your company needs to check which items in their inventory have turned a profit this year. Any items that have accrued at least $25,000 in sales are considered profitable. All other items are making a loss and should be removed from sale. The data they need is contained in the sales revenue table. The table has five columns. One column called ItemID, which identifies each item in the inventory, and an individual column for each of the four business quarters. By checking if the value of the lowest quarter is less than or equal to 25,000 M&G can determine which items made a profit and which items made a loss. The easiest way to perform this task is by using the case-control flow function.


```sql
SELECT *
CASE
	WHEN LEAST (Q1, Q2, Q3, Q4) <= 25000 THEN "Loss"
	ELSE "Profit"
END AS Profit_or_Loss
FROM sales_revenue;

```
