# RETAIL SALES ANALYSIS

## 1.Background and Overview


The retail company has significant amount of data on its sales category wise ,age and gender, sale date and sale time that has been previously underutilized.This project thoroughly analyses and synthesizes data to uncover critical insights to improve the health of the retail.The findings from this project can help drive business decisions by understanding sales patterns, customer behavior, and product performance

**Insights and recommendation are provided on the following key areas:**

 **• Sales Trends Analysis** :Evaluated sales pattern,focusing on total revenue and total orders

**• Premium sales** :Diagonised transactions greater than a target value

**• Peak seasonality** :Detected best selling month in each year

**• Category and Demographics preferences**  :Analyzed the number of orders placed (morning,afternoon,evening) and by age(teen,adult,middle ge,senior adult)

The SQL queries utilized to answer business questions can be found [here](https://github.com/ErnestaRoschelle/Retail_Sales_Analysis/blob/main/retail_sales_analysis.sql)

To view Power BI Dashboard click this link [here - >](https://app.powerbi.com/view?r=eyJrIjoiZGIzNTY0MzQtM2M5ZC00ZDUyLTgxMTgtNDBjOTUyZGM2ZTMyIiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9)

## 2.Data Structure and Overview

The retail_sales table consists of **11 columns** with a total row count of **2000 records**

![Screenshot 2024-11-30 204424](https://github.com/user-attachments/assets/73374314-e2f9-468a-a93c-a6b5f3e082c5)

## 3.Executive Summary

The company’s sales peaked at **535.5M in 2023** but **declined to 464.2M** by year-end, with a minor peak in August. Starting at 396.5M in 2022 and 397.1M in 2023, **sales rose to 490.4M and 464.2M**, respectively, but failed to sustain momentum. The following sections explore contributing factors and improvement opportunities.

### Overview of findings

![Screenshot 2024-12-02 133810](https://github.com/user-attachments/assets/a67b5865-4ddd-4990-84c5-16f2a75f75e8)


## 4.Insights Deep Dive

### Sales Trend

•In 2022, sales began at 23K, rising steadily to 62K in September and peaking at 73K in December. 

•Similarly, 2023 started with 24K sales, increased to 67K in September, but dipped slightly in subsequent months, ending at 69K—below the total sales of 2022. 

•Notably, both years saw a sharp sales spike in September, with sales doubling after August, indicating a recurring seasonal trend.

#### Sales trend by age group Analysis

•In 2023, middle-aged adults contributed the highest sales, while adults recorded 194K sales in 2022.

•Teens accounted for the lowest sales, with 37K in 2022 and 19K in 2023. By category, electronics led sales in 2023 with 162K, while beauty products topped 2022 with 152K.

### Category and Demographic Segmentation Analysis

![Screenshot 2024-12-03 123654](https://github.com/user-attachments/assets/499061d4-9054-462f-8daf-cc28931008b9)


**Beauty Dominance in 2022**: Adults placed the highest number of orders in the beauty category, totaling 145, while teens accounted for the lowest orders (12) in the clothing category. This highlights a significant adult preference for beauty products.

**Clothing Orders Surge in 2023**: Middle-aged adults led clothing category orders with 184, the highest across any segment, while teens continued to show minimal engagement, with just 11 orders in the same category.

**Gender-specific Preferences**: Female buyers placed 75 orders in 2022, particularly favoring clothing, which rose to 105 orders in 2023, driven by middle-aged adults. Meanwhile, male buyers had notable orders in clothing in 2022 (72 by middle-aged adults and 82 by adults) but shifted focus in 2023 to electronics, with 92 orders by middle-aged adults.

**Time-based Purchase Trends**: Both genders demonstrated a clear trend of purchasing clothing and beauty products predominantly in the morning, while electronics were preferred later in the day, consistent across 2022 and 2023.

### Data Analysis & Business Key Problems & Answers

-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022

-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year

-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 

-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)

Query used to answer these business questions can be found  [here](https://github.com/ErnestaRoschelle/Retail_Sales_Analysis/blob/main/retail_sales_analysis.sql)

## 5.Recommendation

•While sales performed well in the last four months of 2022 and 2023, the initial months showed comparatively lower numbers. Strengthening strategies to boost early-year sales is crucial.

•Enhancing marketing efforts for underperforming categories could significantly drive growth.

•Expanding the Electronics category with new product lines offers potential for increased sales through upselling opportunities.

•Focus on expanding the availability and variety of clothing, electronics, and beauty products expecially for teen age group which will help maximize sales potential and solidify their role as key economic drivers.
