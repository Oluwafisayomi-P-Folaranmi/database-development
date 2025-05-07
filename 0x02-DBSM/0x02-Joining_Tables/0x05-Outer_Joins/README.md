# Outer JOINs

The **OUTER JOIN family** in SQL consists of join types that return **unmatched rows** (with `NULL`s) in addition to matched rows. These are different from **INNER JOIN**, which only returns matched rows.

**In contrast to an `INNER JOIN`**, which only returns rows where a match exists in both tables, **an `OUTER JOIN` includes non-matching rows from one or both tables, filling in missing values with `NULL`**.

1. ### **LEFT OUTER JOIN** (or just `LEFT JOIN`)
   - Returns **all rows from the left table**, and matched rows from the right.
   - If there's **no match**, fills in `NULL`s for right table columns.

   ✅ Use when: you want **everything from the left table**, regardless of matches.

2. ### **RIGHT OUTER JOIN** (or just `RIGHT JOIN`)
   - Returns **all rows from the right table**, and matched rows from the left.
   - If there's **no match**, fills in `NULL`s for left table columns.

   ✅ Use when: you want **everything from the right table**, regardless of matches.

3. ### **FULL OUTER JOIN**
   - Returns **all rows from both tables**.
   - Where a match exists, combines the data.
   - Where there’s **no match**, fills in `NULL` from the missing side.

   ✅ Use when: you want a **complete picture** of both tables — matches and non-matches on both sides.
