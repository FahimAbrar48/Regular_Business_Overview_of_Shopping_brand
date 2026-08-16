# Regular_Business_Overview_of_a_Shopping_brand
Customer Shopping Behavior Analysis using Python, PostgreSQL, SQL, and Power BI to uncover customer purchasing patterns, sales trends, product performance, and subscription behavior.

## About the Project

This project focuses on analyzing customer shopping behavior using real-world style customer transaction data. The goal was to understand how customers purchase products, which categories perform better, how customers differ by demographics, and whether factors such as subscriptions, payment methods, and reviews influence purchasing behavior.

I worked on the project as an end-to-end data analysis project, starting with data cleaning and exploration in Python, followed by SQL-based analysis in PostgreSQL and finally creating an interactive dashboard in Power BI.

## Project Goal

The main goal of this project is to turn raw customer shopping data into useful business insights that can help understand customers and improve sales and customer engagement.

## Questions I Wanted to Answer

- How much revenue is generated from customer purchases?
- Which product categories are performing the best?
- Do male and female customers show different purchasing patterns?
- Which age groups purchase more?
- How do subscribers and non-subscribers differ?
- Which payment methods are most popular?
- What is the average purchase amount?
- How are customers rating their purchases?
- Which customer groups contribute more to overall revenue?
- What patterns can be found in customer shopping behavior?

## Dataset

The dataset contains customer-level shopping information such as:

- Customer ID
- Age
- Gender
- Product Category
- Purchase Amount
- Payment Method
- Subscription Status
- Review Rating
- Previous Purchases
- Purchase Frequency
- Shipping Type
- Discount Applied
- Other customer and purchase attributes
- <a href="https://github.com/FahimAbrar48/Regular_Business_Overview_of_Shopping_brand/blob/main/customer_shopping_behavior.csv.xlsx"> Customer_Overall_Data </a>

## Data Cleaning & Preparation

Before starting the analysis, I cleaned and prepared the dataset using Python and Pandas.

The main steps included:

- Checking missing values
- Removing duplicate records
- Checking data types
- Cleaning column names
- Handling inconsistent values
- Checking numerical data
- Preparing the dataset for PostgreSQL

## Tools I Used

- Python
- Pandas
- PostgreSQL
- SQL
- SQLAlchemy
- Power BI
- DAX
- Git & GitHub

## SQL Analysis

After cleaning the data, I loaded it into PostgreSQL and used SQL to answer the main business questions.

Some of the analysis included:

- Total revenue
- Average purchase amount
- Customer count
- Revenue by gender
- Revenue by product category
- Subscription vs non-subscription analysis
- Payment method analysis
- Customer rating analysis
- Customer purchase behavior
- Purchase frequency analysis

## Power BI Dashboard

I created an interactive Power BI dashboard to make the analysis easier to understand.

The dashboard focuses on:

- Overall business KPIs
- Customer demographics
- Product category performance
- Purchase behavior
- Subscription analysis
- Payment methods
- Customer reviews

Users can interact with the dashboard using filters and slicers to explore different customer segments.

## Key Insights

The analysis helped identify important patterns in customer purchasing behavior, including differences across customer groups, product categories, subscription status, and purchasing preferences.

The detailed findings are presented through the Power BI dashboard and SQL analysis included in this repository.

## Key Performance Indicators (KPIs)

- Total Customers
- Total Revenue
- Total Purchases
- Average Purchase Amount
- Average Review Rating
- Average Previous Purchases
- Subscription Rate
- Discount Usage Rate
- ## Project Overview
- <img width="1194" height="675" alt="Screenshot 2026-08-16 140652" src="https://github.com/user-attachments/assets/57d45ff2-39e2-4e53-8911-b1a4a495eba8" />
<img width="1198" height="687" alt="Screenshot 2026-08-16 140611" src="https://github.com/user-attachments/assets/aefec5ba-b729-4cf1-b26e-b689deaa517e" />
<img width="1194" height="675" alt="Screenshot 2026-08-16 140652" src="https://github.com/user-attachments/assets/74e910db-f117-4fe0-a900-f98069b97456" />
<img width="1024" height="417" alt="Screenshot 2026-08-16 152757" src="https://github.com/user-attachments/assets/770faf78-d821-46ba-8d20-1ba84bb644fe" />
<img width="1048" height="337" alt="Screenshot 2026-08-16 152717" src="https://github.com/user-attachments/assets/258b7618-5b49-49dc-8ecc-677170c5a037" />
<img width="858" height="680" alt="Screenshot 2026-08-16 152614" src="https://github.com/user-attachments/assets/78a08dde-5f04-49aa-9d23-a552c5b36981" />
<img width="810" height="768" alt="Screenshot 2026-08-16 152559" src="https://github.com/user-attachments/assets/7614cceb-ae72-4af7-85e0-0d2f150a78d2" />
 
## Project Workflow

```text
Raw Dataset
     ↓
Data Cleaning with Python
     ↓
Exploratory Analysis
     ↓
Data Storage in PostgreSQL
     ↓
SQL Analysis
     ↓
KPI Development
     ↓
Power BI Dashboard
     ↓
Business Insights


