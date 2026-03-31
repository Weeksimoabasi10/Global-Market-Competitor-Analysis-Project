/*SELECT *
INTO General_Retail
FROM [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ]

UNION ALL

SELECT *
FROM [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011];

/* Analysis */

select *
from General_Retail
where price = 0;

 /*Creating a Revenue table*/
ALTER TABLE General_Retail
ADD revenue_combined FLOAT;

Update General_Retail
SET revenue_combined = Quantity * Price;

/* Total Market Overview KPI*/

select sum(revenue_combined) as total_revenue,
count(distinct(Customer_ID)) as total_customers,
count(distinct(invoice)) as total_orders
from General_Retail;


/* MArket share by country*/
select
      country,
      sum(revenue_combined) as total_revenue,
      ROUND(
             sum(revenue_combined) * 100.0 /
             sum(sum(revenue_combined)) over(), 2
      ) as market_share_pct
from General_Retail
group by country
order by total_revenue DESC;

/* Top 10 Competitors (countries)*/

select top 10
      country,
      sum(revenue_combined) as total_revenue
from General_Retail
group by country
order by total_revenue desc; 

/* Pricing Strategy*/
select 
     country,
     avg(price) as avg_price,
     min(price) as min_price,
     max(price) as max_price
from General_Retail
group by country
order by avg_price desc; 

/* Product Dominance*/

select top 10
     description,
     sum(Quantity * Price) as total_revenue
from General_Retail
group by Description
order by total_revenue desc; 

/*Country VS Product*/

select top 20
    country,
    description,
    sum(revenue_combined) as total_revenue
from General_Retail
group by country, Description
order by total_revenue desc;


/* Customer Strength per Country*/

SELECT 
    Country,
    COUNT(DISTINCT Customer_ID) AS total_customers,
    SUM(revenue_combined) AS total_revenue
FROM General_Retail
GROUP BY Country
ORDER BY total_customers DESC; 


/* Monthly Revenue Trend*/

select
      year(invoicedate) as year,
      month(invoicedate) as month,
      sum(revenue_combined) as monthly_revenue
from General_Retail
group by year(invoicedate), Month(invoicedate)
order by year, month;


/* high value customers */

select top 10
     Customer_ID,
     sum(revenue_combined) as total_revenue
from General_Retail
group by Customer_ID
order by total_revenue desc;

/* Market Activity*/
Select 
      country,
      count(*) as total_transactions
from General_Retail
group by Country
order by total_transactions DESC;*/

SELECT @@SERVERNAME;