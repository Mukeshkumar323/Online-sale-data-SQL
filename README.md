# SQL Sales Analysis

## Project Overview
This project analyzes online sales data using SQL. The goal is to generate monthly sales reports by calculating total revenue and order volume. The project demonstrates the use of SQL aggregate functions, date functions, grouping, sorting, and filtering.

## Objectives
- Extract the year and month from `order_date`.
- Calculate monthly revenue using `SUM()`.
- Calculate monthly order volume using `COUNT(DISTINCT order_id)`.
- Group sales data by year and month.
- Sort results using `ORDER BY`.
- Filter results for specific time periods.
- Identify sales trends over time.

## Dataset
**Table Name:** `online_sales`

### Columns
| Column | Description |
|---------|-------------|
| order_id | Unique order identifier |
| order_date | Date when the order was placed |
| product_id | Product identifier |
| amount | Sales amount (revenue) |

## SQL Concepts Used
- SELECT
- EXTRACT()
- SUM()
- COUNT(DISTINCT)
- GROUP BY
- ORDER BY
- WHERE
- LIMIT

## SQL Queries

### 1. Extract Year and Month
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month
FROM online_sales;
```

### 2. Monthly Revenue
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY year, month;
```

### 3. Monthly Order Volume
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY year, month;
```

### 4. Monthly Revenue and Order Volume
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY year, month;
```

### 5. Top Revenue Months
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY total_revenue DESC
LIMIT 5;
```

## Key Findings
- Monthly sales revenue was calculated successfully.
- Order volume was measured using distinct order IDs.
- Revenue trends were analyzed by grouping data by year and month.
- Sorting helped identify the highest-performing months.
- Filtering enabled analysis for specific date ranges.

## Conclusion
This project demonstrates fundamental SQL skills used in data analytics. By applying aggregate functions, date extraction, grouping, sorting, and filtering, meaningful business insights can be generated from online sales data. The project provides a strong foundation for sales reporting and business intelligence analysis.

