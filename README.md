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
- Source: Incubator Hub Data Analysis Project Sales data (link here)
- Description: Contains transaction details of customers from January 2023 to August 2024, with 9921 records across 7 columns (+ total revenue = 8).

### Tools and Technologies Used
- Microsoft Excel: For initial data cleaning, analysis, and quick calculations.
-	SQL: Used for data extraction, transformation, and complex querying.
-	Power BI: For creating interactive dashboards and data visualizations.

### Data Cleaning and Preprocessing
#### Excel
-	Removed duplicates.
-	Filled missing values with appropriate substitutes.
-	Created new column for total revenue (add code)
#### SQL
-	Applied GROUP BY for aggregations.
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
#### Product Performance: 
- The top product by revenue generated is shoe with a revenue of 613,380 while hat had the highest quantity sold at 15,929. The average price shoe was sold for was 35.00 while hat was sold at an average of 21.26. The southern region sold the highest quantities of product (24,298) and had the highest revenue (927,820). Shoe had the highest sales in the south (546,300) compared to east (37,200) and west (29,880). 
#### Performance Overtime: 
The month with the highest revenue of 546,300 and the highest quantity sold of 9,930 was February with the February 2024 having the highest revenue of 298,800. The second quarter of 2023 (April 2023 – June 2023) had the lowest revenue of 166,465 compared to Q1 2024 (Jan 2024 – March 2024) of 551,980. 
#### Geographic Trends: 
- Southern region generated the most revenue of 927,820 having been the hub of sales of shoes, gloves and socks. East with a revenue of 485,925 came second for the sales of shoes, shirts, hats and jackets. Shirts, hats and jackets were sold in the north to generate 387,000 in revenue while west generated the least of 300,345 for the sales of shoes, hats, gloves and socks. 

 ### Visualizations
- The dashboard includes key metrics like total revenue, total orders, total quantity sold, top products by revenue and by quantity, regional sales, yearly, quarterly and monthly distribution of revenue and quantity.

### Conclusions and Insights
- The analysis revealed shoe as the top product by revenue generated and hat by the quantity sold. The south had both the highest revenue and quantity sold for the sale of 3 products – shoes, gloves and socks. 
