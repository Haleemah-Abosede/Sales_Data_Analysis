create database LITA_PROJECT

select * from [dbo].[LITA Capstone Dataset - SalesData]

--total sales for each product category. 
select Product, sum(total_revenue) as Sales from [dbo].[LITA Capstone Dataset - SalesData]
group by product 

--number of sales transactions in each region. 
select region, count(orderid) as Num_of_Sales from [dbo].[LITA Capstone Dataset - SalesData]
group by region

-- highest-selling product by total sales value. 
select top 1 product, sum(total_revenue) as Sum_of_Sales from [dbo].[LITA Capstone Dataset - SalesData]
group by product
order by 2 desc

-- total revenue per product. 
select Product, sum(total_revenue) as Revenue from [dbo].[LITA Capstone Dataset - SalesData]
group by product 

-- monthly sales totals for the current year. 
select orderdate, sum(total_revenue) as Total_Sales from [dbo].[LITA Capstone Dataset - SalesData]
where orderdate between '2024-01-01' and '2024-12-31'
group by orderdate
order by orderdate

-- top 5 customers by total purchase amount. 
select top 5 customer_id, sum(total_revenue) as Total_Purchase_Amount from [dbo].[LITA Capstone Dataset - SalesData]
group by Customer_Id
order by Total_Purchase_Amount desc

-- percentage of total sales contributed by each region. 
With region as (
select region, sum(total_revenue) as Sales from [dbo].[LITA Capstone Dataset - SalesData]
group by region)

select region, (Sales * 100.0 / (select sum(total_revenue) from [dbo].[LITA Capstone Dataset - SalesData])) as Percentage_TotalSales
from region
order by Percentage_TotalSales desc

--products with no sales in the last quarter. 
select distinct product from [dbo].[LITA Capstone Dataset - SalesData]
where product not in (
select distinct product from [dbo].[LITA Capstone Dataset - SalesData]
where orderdate between '2024-07-01' and '2024-09-30')
group by product

---select product from [dbo].[LITA Capstone Dataset - SalesData]
---where orderdate not in ('2024-07-01', '2024-09-30')
---group by  product
