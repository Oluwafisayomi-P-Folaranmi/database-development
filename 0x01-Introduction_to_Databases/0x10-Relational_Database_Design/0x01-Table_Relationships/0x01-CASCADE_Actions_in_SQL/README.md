## **CASCADE Actions in MySQL**

The **CASCADE type** in SQL defines how foreign key constraints handle changes (updates or deletions) in the parent table. The parent table is the table that contains the primary key referenced by a foreign key in another table.

The Cascade types is used with **ON DELETE** and **ON UPDATE** clauses in `FOREIGN KEY` constraints.

### **Types of CASCADE Actions in SQL**

1. **ON DELETE CASCADE**
   - When a record in the **parent table** (e.g., `student`) is deleted, all related records in the **child table** (e.g., `course`) are also deleted automatically.
   - Useful when dependent data should not exist without the parent.

   **Example:**
   ```sql
   ALTER TABLE `course`
   ADD CONSTRAINT `fk_course_student`
   FOREIGN KEY (`student_id`) REFERENCES `student`(`id`)
   ON DELETE CASCADE;
   ```
   **Effect:**  
   - If `student.id = 1` is deleted, all `course` records where `student_id = 1` will also be deleted.

2. **ON UPDATE CASCADE**
   - When a primary key value in the **parent table** is updated, the foreign key values in the **child table** are automatically updated.
   - Ensures referential integrity if the primary key value changes.

   **Example:**
   ```sql
   ALTER TABLE `course`
   ADD CONSTRAINT `fk_course_student`
   FOREIGN KEY (`student_id`) REFERENCES `student`(`id`)
   ON UPDATE CASCADE;
   ```
   **Effect:**  
   - If `student.id = 1` is updated to `id = 10`, then all `course.student_id = 1` will be updated to `student_id = 10`.

3. **ON DELETE SET NULL**
   - If a parent record is deleted, the foreign key in the child table is set to `NULL` instead of deleting the row.
   - Useful if you want to keep child records but remove the reference.

   **Example:**
   ```sql
   ALTER TABLE `course`
   ADD CONSTRAINT `fk_course_student`
   FOREIGN KEY (`student_id`) REFERENCES `student`(`id`)
   ON DELETE SET NULL;
   ```
   **Effect:**  
   - If `student.id = 1` is deleted, all `course.student_id = 1` will be set to `NULL`.

4. **ON UPDATE SET NULL**
   - If the parent table's primary key is updated, the foreign key in the child table is set to `NULL`.

   **Example:**
   ```sql
   ALTER TABLE `course`
   ADD CONSTRAINT `fk_course_student`
   FOREIGN KEY (`student_id`) REFERENCES `student`(`id`)
   ON UPDATE SET NULL;
   ```
   **Effect:**  
   - If `student.id = 1` is updated to `id = 10`, all `course.student_id = 1` will be set to `NULL`.

5. **ON DELETE RESTRICT / ON UPDATE RESTRICT**
   - Prevents deletion or updating of a referenced record if a foreign key reference exists.
   - This means you **cannot delete a student** if courses reference them.

   **Example:**
   ```sql
   ALTER TABLE `course`
   ADD CONSTRAINT `fk_course_student`
   FOREIGN KEY (`student_id`) REFERENCES `student`(`id`)
   ON DELETE RESTRICT;
   ```
   **Effect:**  
   - If `student.id = 1` has related courses, the deletion will fail.

6. **ON DELETE NO ACTION / ON UPDATE NO ACTION**
   - Similar to `RESTRICT`, but enforcement happens at the end of the SQL statement, not immediately.
   - Usually behaves the same as `RESTRICT` in most databases.

🚀
