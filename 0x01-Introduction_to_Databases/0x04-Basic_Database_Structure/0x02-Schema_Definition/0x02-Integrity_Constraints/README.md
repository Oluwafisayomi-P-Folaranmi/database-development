## **Integrity Constraints**

Every table in a database should abide by rules or constraints. These are known as integrity constraints. There are three main integrity constraints:

  1. **Key** constraints
  2. **Domain** constraints
  3. **Referential Integrity** constraints

### **Key Constraints**

In every table there should be one or more columns or fields that can be used to fetch data from tables. In other words, a primary key. The key constraint specifies that there should be a column, or columns, in a table that can be used to fetch data for any row. 

This key attribute or primary key should never be `NULL` or the same for two different rows of data. For example, in the `student` table, I can use the `student_id` to fetch data for each of the students. No value of `student_id` is null, and it is unique for every row, hence it can be the key attribute. 

### **Domain Constraints**

Domain constraints refer to the rules defined for the values that can be stored for a certain column. For instance, you cannot store the home address of a student in the `first_name` column. Similarly, a contact number cannot exceed ten digits.

### **Referential Integrity Constraints**

When a table is related to another table via a foreign key column, then the referenced column value must exist in the other table. This means, according to the `student` and `department` examples, that values should exist in the `id` column in the `student` table because the two tables are related via the `id` column.
