# Global Superstore Sales Analysis

## Project Overview
Global Superstore Sales Analysis is a data analytics project focused on understanding sales performance, profitability, product performance, and regional business trends using SQL and Power BI.

The project uses the Global Superstore dataset containing 51,290 records and 24 columns.

## Objectives
- Analyze overall sales, profit, quantity, and order performance.
- Identify high-performing product categories and regions.
- Analyze top-selling and loss-making products.
- Evaluate customer segment performance.
- Analyze shipping mode performance.
- Develop an interactive dashboard for business insights.

## Tools & Technologies
- Python
- Pandas
- Jupyter Notebook
- MySQL
- SQL
- Power BI

## Dataset
- Dataset: Global Superstore
- Records: 51,290
- Columns: 24
- Source format: Excel
- Processed format: CSV

## Project Workflow

### 1. Data Preparation
- Imported the Excel dataset using Pandas.
- Converted the Excel dataset into CSV format.
- Verified dataset dimensions and records.

### 2. Database Integration
- Connected Python to MySQL using SQLAlchemy and MySQL Connector.
- Imported the dataset into the MySQL database.
- Verified successful data insertion.

### 3. SQL Analysis
Performed business analysis using SQL queries:
- Overall business performance
- Category-wise sales and profitability
- Regional sales and profitability
- Top-selling products
- Loss-making products
- Customer segment analysis
- Shipping mode analysis

### 4. Power BI Dashboard
Developed an interactive two-page dashboard:
- Sales Performance Overview
- Product & Profit Analysis

## Dashboard Screenshots

### Sales Performance Overview
![Sales Performance Overview](Screenshots/sales_performance_overview.png)

### Product & Profit Analysis
![Product & Profit Analysis](Screenshots/product_profit_analysis.png)

## Key Project Outcomes
- Analyzed 51,290 records of global retail sales data.
- Evaluated sales and profitability across product categories and regions.
- Identified top-selling and loss-making products.
- Compared customer segment and shipping mode performance.
- Created an interactive two-page Power BI dashboard.

## Project Structure
```text
Global-Superstore-Sales-Analysis/
├── Dataset/
│   └── Orders.csv
├── SQL/
│   └── superstore_analysis.sql
├── PowerBI/
│   └── Global_Superstore_Sales_Analysis.pbix
├── Screenshots/
│   ├── sales_performance_overview.png
│   └── product_profit_analysis.png
├── README.md
└── .gitignore
```

## Author
Debajit Barman