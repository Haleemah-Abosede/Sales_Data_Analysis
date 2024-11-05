# Sales_Data_Analysis
## Table of Contents
-	Overview
-	Data Sources
-	Tools and Technologies Used
-	Data Cleaning and Preprocessing
-	Exploratory Data Analysis (EDA)
-	Analysis and Findings
-	Visualizations
-	Conclusions and Insights


### Overview
This project analyses sales data to uncover factors impacting product performance and revenue growth. Excel, SQL and Power BI were used for this analysis to provide actionable insights on product positioning for the sales team

### Data Sources
- Source: Incubator Hub Data Analysis Project Sales data [Here]()
- Description: Contains transaction details of customers from January 2023 to August 2024, with 9921 records across 7 columns (+ total revenue = 8).

### Tools and Technologies Used
- Microsoft Excel: For initial data cleaning, analysis, and quick calculations.
-	SQL: Used for data extraction, transformation, and complex querying.
-	Power BI: For creating interactive dashboards and data visualizations.

### Data Cleaning and Preprocessing
#### Excel
-	Removed duplicates.
-	Filled missing values with appropriate substitutes.
-	Created new column for total revenue
  ```EXCEL
== (F2 *G2)
```
- Found average product sales and total revenue by region
```EXCEL
=AVERAGEIF($C$2:$C$9922, C2, $H$2:$H$9922)
=SUMIF($D$2:$D$9922, D2, $H$2:$H$9922 )
```
![product and region ](https://github.com/user-attachments/assets/098577a6-cb7d-4240-8894-66980b0f717d)


#### SQL
-	Applied GROUP BY for aggregations.
- The following questions were answered
   - total sales for each product category.
 ```SQL
   select Product, sum(total_revenue) as Sales from [dbo].[LITA Capstone Dataset - SalesData]
group by product
```

   - number of sales transactions in each region.
 ```SQL
   select region, count(orderid) as Num_of_Sales from [dbo].[LITA Capstone Dataset - SalesData]
group by region
```

   - highest-selling product by total sales value.
 ```SQL
   select top 1 product, sum(total_revenue) as Sum_of_Sales from [dbo].[LITA Capstone Dataset - SalesData]
group by product
order by 2 desc
```

   - total revenue per product.
 ```SQL
  select Product, sum(total_revenue) as Revenue from [dbo].[LITA Capstone Dataset - SalesData]
group by product
```

   - monthly sales totals for the current year.
 ```SQL
  select orderdate, sum(total_revenue) as Total_Sales from [dbo].[LITA Capstone Dataset - SalesData]
where orderdate between '2024-01-01' and '2024-12-31'
group by orderdate
order by orderdate
```

   - top 5 customers by total purchase amount.
 ```SQL
  select top 5 customer_id, sum(total_revenue) as Total_Purchase_Amount from [dbo].[LITA Capstone Dataset - SalesData]
group by Customer_Id
order by Total_Purchase_Amount desc
```

   - the percentage of total sales contributed by each region.
 ```SQL
   With region as (
select region, sum(total_revenue) as Sales from [dbo].[LITA Capstone Dataset - SalesData]
group by region)

select region, (Sales * 100.0 / (select sum(total_revenue) from [dbo].[LITA Capstone Dataset - SalesData])) as Percentage_TotalSales
from region
order by Percentage_TotalSales desc
```

   - products with no sales in the last quarter.
 ```SQL
   select distinct product from [dbo].[LITA Capstone Dataset - SalesData]
where product not in (
select distinct product from [dbo].[LITA Capstone Dataset - SalesData]
where orderdate between '2024-07-01' and '2024-09-30')
group by product
```


#### Power BI
-	Created custom calculated columns and measures to facilitate analysis.
-	Transformed data types as needed to optimize visuals and calculations.
  
### Exploratory Data Analysis (EDA)
  #### Descriptive Statistics: 
  - The data shows information on sales transactions of 6 products namely – Shoes, gloves, jacket, shirt, hat and socks. Information on order id, customer id, region, order date, unit price and quantity sold were given. A new column was created to calculate total sales (i.e., total revenue) using excel as the product of quantity and unit price totalling at 2,101, 090. The total orders were 9921 with a quantity of 68,461 products sold with an average unit price of 38.
#### Trends and Patterns:
- The products were distributed among the 4 regions with the sale of shoes, shirts, hats and jackets in the East, shoes, gloves and socks in the South, shirts, hats and jackets in the North and shoes, hats, gloves and socks in the West. 
#### Correlations: 
- With increase in the quantity sold there should be an increase in total revenue and this was observed over time (Jan 2023 to July 2024) from the data with the highest quantity sold in July 2023 at 5940 with 237,600 generated in revenue and the highest revenue in February 2024 at 298,800 having sold 4980 products

### Analysis and Findings
![month by quantity](https://github.com/user-attachments/assets/ce355c38-daf1-4e79-8a1f-53c352dfc943)
![region by quantity](https://github.com/user-attachments/assets/51fdb903-8246-4d5e-a471-833b855830d1)
![product by revenue](https://github.com/user-attachments/assets/a80ded81-fec3-461d-9f9f-486eb4187e4c)
![product by quantity](https://github.com/user-attachments/assets/7e70c3b7-7e2a-408e-a09d-059968c85df4)
![month by revenue](https://github.com/user-attachments/assets/188d5544-137b-4b9b-bd24-7189a5bc0136)
![region by revenue](https://github.com/user-attachments/assets/99b5b13c-90bd-4590-9964-0fd9fac69a4d)



#### Product Performance: 
- The top product by revenue generated is shoe with a revenue of 613,380 while hat had the highest quantity sold at 15,929. The average price shoe was sold for was 35.00 while hat was sold at an average of 21.26. The southern region sold the highest quantities of product (24,298) and had the highest revenue (927,820). Shoe had the highest sales in the south (546,300) compared to east (37,200) and west (29,880). 
#### Performance Overtime: 
The month with the highest revenue of 546,300 and the highest quantity sold of 9,930 was February with the February 2024 having the highest revenue of 298,800. The second quarter of 2023 (April 2023 – June 2023) had the lowest revenue of 166,465 compared to Q1 2024 (Jan 2024 – March 2024) of 551,980. 
#### Geographic Trends: 
- Southern region generated the most revenue of 927,820 having been the hub of sales of shoes, gloves and socks. East with a revenue of 485,925 came second for the sales of shoes, shirts, hats and jackets. Shirts, hats and jackets were sold in the north to generate 387,000 in revenue while west generated the least of 300,345 for the sales of shoes, hats, gloves and socks. 

 ### Visualizations
![Sales_BI_2](https://github.com/user-attachments/assets/fac3d4b2-4ef5-4047-b814-a93c047ba273)
![Sales_BI_1](https://github.com/user-attachments/assets/90e7321a-43d5-45dd-a7f7-f870f0a1a3e3)

- The dashboard includes key metrics like total revenue, total orders, total quantity sold, top products by revenue and by quantity, regional sales, yearly, quarterly and monthly distribution of revenue and quantity.

### Conclusions and Insights
- The analysis revealed shoe as the top product by revenue generated and hat by the quantity sold. The south had both the highest revenue and quantity sold for the sale of 3 products – shoes, gloves and socks. 
