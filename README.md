# Retail SQL Analytics

## Project Overview

This project is a SQL portfolio project focused on analyzing a retail data warehouse using PostgreSQL.

The goal of the project is to demonstrate practical SQL skills by working with a multi-table retail dataset, writing analytical queries, and extracting business insights related to sales, customers, products, and revenue trends.

The project is based on a retail data warehouse dataset containing multiple related tables and over 1 million rows.

## Project Goals

The main goals of this project are:

* Load a multi-table retail dataset into PostgreSQL
* Explore the database structure and table relationships
* Perform data quality checks
* Write analytical SQL queries for business questions
* Use JOINs, GROUP BY, HAVING, CTEs, subqueries, and window functions
* Analyze sales performance, customer behavior, and product performance
* Use indexes and EXPLAIN ANALYZE for basic query optimization
* Present results and insights in a clear portfolio-ready format

## Dataset

* Dataset source: Kaggle
* Dataset name: Retail Data Warehouse - 12 Table, 1M+ Rows Dataset

The dataset contains retail data organized in multiple tables. It is suitable for practicing SQL analysis, business intelligence tasks, and data warehouse exploration.

The raw data files are not stored in this repository. To reproduce the project, download the dataset from Kaggle and place the CSV files in the local `data/raw/` folder.

## Tools Used

* PostgreSQL
* pgAdmin
* SQL
* GitHub
* VS Code

## SQL Skills Demonstrated

This project demonstrates the following SQL skills:

* Database schema understanding
* Primary keys and foreign keys
* JOIN and LEFT JOIN
* GROUP BY and HAVING
* CASE WHEN
* Common Table Expressions
* Subqueries
* Window functions

  * ROW_NUMBER
  * RANK
  * DENSE_RANK
  * LAG
  * LEAD
* Date functions

  * DATE_TRUNC
  * EXTRACT
* Aggregations

  * COUNT
  * SUM
  * AVG
  * MIN
  * MAX
* Query optimization basics

  * Indexes
  * EXPLAIN ANALYZE

## Planned Analysis

The project will answer the following business questions:

1. What is the monthly revenue trend?
2. Which products generate the most revenue?
3. Who are the top customers by total spending?
4. Which product categories perform best?
5. What is the average order value?
6. How does revenue change month over month?
7. Which customers make repeat purchases?
8. Which products or categories have the strongest sales performance?
9. What is the rolling revenue trend?
10. How can selected queries be optimized with indexes?

## Project Structure

```text
retail-sql-analytics/
│
├── README.md
├── data/              # Dataset instructions
├── schema/            # Table creation scripts and ERD
├── scripts/           # Data import and index creation scripts
├── queries/           # Analytical SQL queries
└── results/           # Screenshots and business insights
```

## Current Status

Project setup is in progress.

Next steps:

* Download and inspect the dataset
* Create PostgreSQL database
* Create tables
* Import CSV files
* Explore relationships between tables
* Start writing data quality checks
