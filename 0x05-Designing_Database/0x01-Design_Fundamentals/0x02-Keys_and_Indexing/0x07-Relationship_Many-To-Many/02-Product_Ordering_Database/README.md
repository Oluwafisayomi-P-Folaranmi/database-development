# Product Ordering Database

Here is some sample data for the `Supplier`, `Product`, and `SupplierProduct` tables based on the structure you provided:

### Breakdown - DATABASE 1:
- **Supplier Data:**
    - 4 suppliers from various countries.
- **Product Data:**
    - 5 different products.
- **SupplierProduct Data:**
    - Example many-to-many relationships between suppliers and products:
        - `Global Supplies Co.` supplies laptops and wireless earbuds.
        - `Tech Innovators Ltd.` supplies laptops and solar panels.
        - `Eco Green Solutions` and `Future Foods Inc.` both supply organic apples.
        - `Future Foods Inc.` also supplies LED light bulbs.

### Explanation - DATABASE 2:

1. **Supplier Table**: Contains the supplier details (name, address, and country).
2. **Product Table**: Contains product details (name, description, and price per unit).
3. **Order Table**: Represents orders made by suppliers. It includes the `OrderId` as the primary key, foreign keys (`SupplierId` and `ProductId`), order details such as date, quantity, total price, and status.
