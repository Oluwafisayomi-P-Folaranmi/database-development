# **Overview of Data Warehousing**

A regular database collects, stores, and processes data from transactions in real-time. **But what if you need to aggregate and analyze data from multiple sources? In these instances, a data warehouse is a perfect solution.** It can aggregate data from a range of sources and analyze it using different tools.

Over the next few minutes, you'll learn:

- What a data warehouse is  
- Its main characteristics  
- Different types of data used in analytics

## **Use Case: Global Superstore's Sales Drop**

The online e-commerce platform Global Superstore has seen a significant drop in sales recently. They want to perform data analytics to identify the reasons behind this downturn.

The company has large amounts of data from multiple sources like:

- Online transactions  
- Social media interactions  
- Website data  

**Analyzing all this data requires powerful tools. A data warehouse is the ideal solution.**

## **What is a Data Warehouse?**

A data warehouse is a centralized data repository that:

- **Aggregates data from multiple sources**
- **Stores and processes large volumes of data**  
- **Separates data analysis from standard transaction processing**

Users can query this data to perform data analysis. This type of database is referred to as **Online Analytical Processing (OLAP).**

In contrast, a regular database that handles transactions in real-time is known as **Online Transactional Processing (OLTP).**

## **Key Characteristics of a Data Warehouse**

There are four key characteristics of a data warehouse **(you can call it SINT):**

### **1. Subject-Oriented**

- Focuses on specific subject areas like sales or marketing  
- For example, Global Superstore can build a warehouse focusing on sales to analyze top-selling and low-performing products

### **2. Integrated**

- Aggregates data from different sources in a **consistent format**
- Must handle naming conflicts and varying data types  
- For example: Global Superstore integrates online purchases, web interactions, and social media data

### **3. Non-Volatile**

- Data is not deleted once it's loaded into the warehouse  
- Enables long-term analysis  
- For example: The more data Global Superstore uses, the better the insights

### **4. Time-Variant**

- Stores data over extended periods  
- Allows measurement of changes and identification of trends  
- For example: Global Superstore can analyze several years of sales data to understand profit decline

## **Types of Data in Analytics**

Data used in analytics can be categorized as:

### **Structured Data**

- Presented in a defined format (e.g., tables)
- Managed via relational databases
- Easy to search using SQL
- Widely used in data warehouses for accurate, focused analysis

### **Semi-Structured Data**

- Partially structured with both structured and unstructured elements  
- Example: Email (structured fields like sender and subject; unstructured body content)  
- Requires more effort for analysis

### **Unstructured Data**

- No predefined structure or model  
- Includes text, video, audio, images  
- **Requires advanced analytics (e.g., machine learning, data mining) for insights**

## **Data Lake vs. Data Warehouse**

- Data lakes can store unstructured and semi-structured data. Better suited for data scientists  
- Data warehouses are preferred by businesses for structured data due to accuracy

## **Conclusion**

You should now be able to:

- Explain what a data warehouse is  
- Outline its main characteristics  
- Distinguish between structured, semi-structured, and unstructured data in analytics

That's great progress. Looking forward to guiding you further through these topics.
