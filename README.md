GravityBooks ETL Project
Project Overview

This project focuses on extracting data from an OLTP database of an online book store and transforming it into a data warehouse (DWH) optimized for analytics and reporting. 
The ETL (Extract, Transform, Load) process was implemented using SQL Server Integration Services (SSIS), and the data warehouse is structured using a snowflake schema with fact and dimension tables.

Project Structure
Source: OLTP Database

The OLTP (Online Transaction Processing) system is the source of the data, designed for managing day-to-day operations of the book store. The database includes multiple entities such as:

    Books (book information, languages, authors, publishers)
    Customers (customer details, addresses)
    Orders (order details, shipping methods, order history, order status)

Refer to the Entity Relationship Diagram (ERD) for more details on the OLTP schema:

Destination: Data Warehouse

The Data Warehouse (DWH) is the target for the ETL process, structured to support analytical queries. It follows a star schema model, consisting of:

    Fact Tables: Fact_Accumulating, Fact_Sales
    Dimension Tables: Customer_DIM, Book_DIM, Shipping_DIM, Author_DIM, Boo_Author_DIM, Address_DIM, Cust_Address_DIM.
    other tables: Meta_Control_Fact_Load 

Refer to the Dimensional Model for more details:

ETL Process

The ETL process extracts data from the OLTP system, transforms it to fit the DWH schema, and loads it into the data warehouse. Key steps involved are:

    Extract:
        Pulling data from the OLTP database (e.g., customer orders, books, and shipping details).

    Transform:
        Handling inconsistent formats.
        Data transformation to fit the DWH dimensional model (fact and dimension tables).
        Implementing surrogate keys for dimensional tables.
        Use slowly changing diemension for dimensional tables.
        Add new columns to DWH(e.g, source_system_code, is_current, start_date, end_date)
        Add Audit columns (e.g, package_name, task_name, machine_name, excution_start_time) 
        make lookups on fact tables.

    Load:
        Loading data into the target tables (fact and dimension tables) in the DWH.
