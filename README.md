# BITSoM_BA_2507587-fleximart-data-architecture
Transformation and analysis of Fleximart data set
# FlexiMart Data Architecture Project

**Student Name:** [Your Name]
**Student ID:** [Your ID]
**Email:** [Your Email]
**Date:** [Date]

## Project Overview

1.ETL Pipeline & Data Quality: An automated ETL pipeline was built to ingest operational data, which includes crucial data cleaning and transformation steps like removing duplicates, handling missing values, and standardizing category names before loading.

2.Star Schema Data Warehouse: The cleaned data is transformed into a highly efficient Star Schema data warehouse centered on the fact_sales table (detailing transaction line items) and surrounded by three key dimension tables: dim_date, dim_customer, and dim_product.

3.Analytical Capabilities: The final warehouse supports complex OLAP analytics, enabling business users to execute queries for monthly sales drill-downs, segment customers based on total spending, and identify top-performing products by calculating their revenue contribution percentage.

## Repository Structure
├── part1-database-etl/
│   ├── etl_pipeline.py
│   ├── schema_documentation.md
│   ├── business_queries.sql
│   └── data_quality_report.txt
├── part2-nosql/
│   ├── nosql_analysis.md
│   ├── mongodb_operations.js
│   └── products_catalog.json
├── part3-datawarehouse/
│   ├── star_schema_design.md
│   ├── warehouse_schema.sql
│   ├── warehouse_data.sql
│   └── analytics_queries.sql
└── README.md

## Technologies Used

- Python 3.x, pandas, mysql-connector-python
- MySQL 8.0 / PostgreSQL 14
- MongoDB 6.0

## Setup Instructions

### Database Setup

```bash
# Create databases
mysql -u root -p -e "CREATE DATABASE fleximart;"
mysql -u root -p -e "CREATE DATABASE fleximart_dw;"

# Run Part 1 - ETL Pipeline
python part1-database-etl/etl_pipeline.py

# Run Part 1 - Business Queries
mysql -u root -p fleximart < part1-database-etl/business_queries.sql

# Run Part 3 - Data Warehouse
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_schema.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_data.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/analytics_queries.sql


### MongoDB Setup

mongosh < part2-nosql/mongodb_operations.js

## Key Learnings

1.Understanding Schema Trade-offs (RDBMS vs. NoSQL): I learned the limitations of rigid Relational Database schemas, specifically the "Sparse Columns" problem, when dealing with diverse product attributes (like those in products_catalog.json). This highlighted the value of using a flexible NoSQL solution (like MongoDB, as explored in nosql_analysis.md.txt) for dynamic operational data like product catalogs, even while maintaining a stable RDBMS for the core data warehouse.

2.Importance of Data Quality in ETL: The ETL process (ETL_pipeline.ipynb and data_quality_report.txt) reinforced the critical nature of data cleaning before analysis. I learned to systematically implement steps for duplicate removal and missing value imputation, recognizing that the success of any subsequent analysis hinges on the integrity of the data loaded into the warehouse.

3.Designing for Performance (Star Schema): I gained practical experience in designing a Star Schema (star_schema_design.txt), understanding how separating core metrics into a fact_sales table and descriptive data into dimension tables (dim_product, dim_customer, dim_date) significantly optimizes query performance for analytical tasks like drill-downs and customer segmentation.

4.Advanced SQL for Business Intelligence: The execution of business and analytics queries (Business_queries.sql, analytics_queries.sql) taught me how to apply advanced SQL concepts, such as using Window Functions (SUM() OVER()) for calculating running totals and contribution percentages, and using CASE statements within aggregation for customer segmentation, moving beyond simple JOINs and GROUP BYs.

## Challenges Faced

1.Challenge: Handling Non-Standardized and Missing Data in ETL.

Solution: Implemented data quality checks and transformation functions in the ETL pipeline (ETL_pipeline.ipynb). This involved steps to explicitly remove duplicate records and handle missing values, as documented in the data_quality_report.txt, ensuring only clean, standardized data was loaded into the warehouse tables.

2.Challenge: Rigid Schema for Diverse Product Catalogs (Sparse Columns Problem).

Solution: Identified the issue of a rigid RDBMS schema not accommodating diverse product attributes (e.g., Laptops vs. Shoes), leading to inefficient, sparse tables. The solution proposed and analyzed was to adopt a flexible NoSQL/Document Database (like MongoDB) for the operational product catalog, which allows for dynamic, non-uniform product specifications, thus solving the "Sparse Columns" problem (nosql_analysis.md.txt).








