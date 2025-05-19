# **ETL Testing**

This reading provides an overview of ETL testing and best practices that should be followed during the testing process.

## **Overview** 

A data warehouse provides a central data repository that supports advanced data analytics and reporting. ETL refers to the Extract, Transform, and Load processes required to move data from various data sources into a data warehouse.

To complete the ETL processes you need to:

-   Extract relevant and valid data. 
    
-   Transform the extracted data into a suitable format and structure.
    
-   And load the transformed data from various data sources into the data warehouse repository.
    

But how can you ensure that the loaded data is correct, valid, reliable, and consistent?   

## **ETL testing**

The main purpose of ETL testing is to ensure accuracy, reliability, validity and consistency of loaded data. ETL testing investigates whether there are problems in ETL processes that prevent the creation of good quality data. This can be applied by carrying out the following actions:

-   Mapping data in an appropriate way.
    
-   Validating data.
    
-   Checking duplicates of data.
    
-   Validating dates.
    
-   And verifying the completeness and correctness of data.
    

## **ETL testing in practice**

Global Super Store has many different departments, each of which manages customer data in a different way on different servers using different unique identifiers. **For example**, the sales department uses customer phone numbers as unique IDs, while the marketing department uses automatically generated customer IDs. Also, certain data is represented in different ways. For example, customer full names are stated as one field in the sales department. But they’re stated in two fields in the marketing department (as first name and last name). The date in sales department is formatted as yyyy-m-d (for example 2020-9-5). Yet it's formatted as yy\\m\\d (or 20\\9\\5) in the marketing department.

This raises several problems for Global Super Store. A key issue that it can’t investigate which customers placed orders after their recent marketing campaign, because customer IDs are stored in different formats across the different departments. The solution to this problem is to create a new database model in the data warehouse. They can then extract relevant data, transform it and load it from the sales and marketing databases.

The new model could include:

-   The Orders table with order ID, and order date.
    
-   The Marketing table with marketing ID and marketing date.
    
-   And the customer table with each customer’s full name, initial unique identifiers from both departments and a new unique key that enables the identification of customers from both departments. 
    

This new model makes it possible to link the purchase history of customers with the marketing campaign, and then perform relevant data analysis.

## **Performing ETL testing**

To ensure that the data has been loaded correctly, **ETL testing** should be performed using the following methods.

### **Data mapping document**

Create a data mapping document to transform data from both department’s data sources to the destination repository in the data warehouse. This document should be reviewed, verified and validated by database engineers and data analysts to ensure correct data mapping.

### **Data validation**

Perform data validation by comparing data structure, datatypes, data formats and constraints in the related source and target tables against the corresponding mapping document. You should also perform data validation to verifying date values when creating new records of data, as this allows the data warehouse system to extract new data from the data sources and update the relevant repository databases in case of changes in data.

### **Data completeness**

Ensure data completeness by verifying that all expected data is loaded into the target tables including records counts and rejected records. You also need to check for any constraints that have been applied and ensured that all unique values have been populated as required. 

### **Data correctness**

Perform data correctness to resolve any data naming conflicts, check that all misspelled data has been corrected, and make sure that any unexpected data values (in other words, values that are out of range) have been fixed or removed.

### **Data quality**

Ensure good data quality by checking names and numbers of formats, precision, and null values where NOT NULL constraint is specified.

### **Unique data**

Run a duplicate check to ensure there are unique records of data available in all tables and that all duplicate records of data have been removed. 

## **Conclusion**

ETL testing aims to verify whether data is loaded from a data source to the target database in the data warehouse as expected. This ensures proper data analytics by removing duplicated data and excluding spam and corrupted data. It also validates data against the initial data in the data sources, changes the existing data format into the right format and loads correct and consistent data into the data warehouse.
