# Global E-Commerce Sales Analysis

## Project Overview

This project analyzes global e-commerce sales data to understand sales performance, profitability, customer behavior, product performance, regions, payment methods, and discount patterns.

The project uses Excel for data preparation, MySQL for data analysis, and Power BI for creating an interactive dashboard.

## Tools & Technologies

- Excel
- MySQL
- Power BI
- SQL
- DAX

## Dataset

The dataset contains 2,000 e-commerce orders with information about:

- Order details
- Customer information
- Customer segment
- Country and region
- Product category and product name
- Quantity
- Unit price
- Discount
- Sales
- Shipping cost
- Profit
- Payment method

## Data Cleaning

The dataset was checked and prepared before analysis.

- Checked for duplicate records
- Checked for missing values
- Verified date formats
- Verified numerical columns
- Kept valid negative profit values for analysis

## SQL Analysis

MySQL was used to analyze the dataset and calculate important business metrics.

Key analysis included:

- Total sales and total profit
- Total orders
- Average order value
- Sales and profit by region
- Sales and profit by customer segment
- Sales and profit by product category
- Sales by country
- Top products and customers
- Payment method analysis
- Discount analysis
- Monthly and yearly sales trends
- Loss-making orders
- Shipping cost analysis

## Power BI Dashboard

The Power BI dashboard contains two pages.

### Page 1 – Global E-Commerce Sales Dashboard

The overview page includes:

- Total Sales
- Total Profit
- Total Orders
- Average Order Value
- Sales Trend
- Sales by Region
- Profit by Region
- Sales by Product Category
- Sales by Customer Segment

Interactive slicers are provided for:

- Year
- Region
- Product Category

### Page 2 – Detailed Analysis

The detailed analysis page includes:

- Top 10 Products by Sales
- Top 10 Customers by Sales
- Sales by Country
- Sales by Payment Method
- Sales by Discount
- Monthly Sales Trend
- Profit by Product Category
- Profit by Customer Segment

## Key Insights

- Total Sales: 484,559.34
- Total Profit: 158,872.32
- Total Orders: 2,000
- Average Order Value: 242.28
- Furniture generated the highest sales and profit among product categories.
- Consumer segment generated the highest sales.
- Mexico recorded the highest sales among countries.
- Credit Card was the most used payment method.
- October recorded the highest combined monthly sales.
- Clothing & Accessories had the highest profit margin among the product categories.

## Project Outcome

This project helped identify important sales and profitability patterns using SQL and Power BI. The interactive dashboard makes it easier to explore business performance and support data-driven decision making.

## Project Files

- `Ecommerce_sales_Analysis.csv` – Cleaned dataset
- `ecommerce_analysis.sql` – SQL analysis queries
- `Ecommerce_Sales_Analysis.pbix` – Power BI dashboard
