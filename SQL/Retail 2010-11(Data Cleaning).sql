/*SELECT TOP (1000) [Invoice]
      ,[StockCode]
      ,[Description]
      ,[Quantity]
      ,[InvoiceDate]
      ,[Price]
      ,[Customer_ID]
      ,[Country]
  FROM [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011];

select *
from [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011]
where Customer_ID is null; */


-- CLEANING
/*
select distinct(invoice)
from [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011]
where Invoice like 'C%';
;

delete from [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011]
where Invoice like 'C%';

select invoice
from [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011];


--Cleaning negative quantities

select quantity 
from [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011] 
where Quantity <=0;

delete from [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011]
where Quantity <=0;

select quantity 
from [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011];*/


--Removing NULL Customer ID
select customer_id
from [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011]
where Customer_ID is null;

delete from [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011]
where Customer_ID is null;


---Cleaning whitespaces & covert to uppercase
select *
from [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011];


UPDATE [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011]
SET Description = LTRIM(RTRIM(Description));

update [30PROJECTS].[dbo].[online_retail_III - Year 2010-2011]
set Description = UPPER(Description); 

