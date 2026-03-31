SELECT *
  FROM [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ];

select *
from [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ]
where Customer_ID is null;

---CLEANING 
--Removing cancelled orders
select invoice
from [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ]
where Invoice like 'C%';
;

delete from [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ]
where Invoice like 'C%';

select invoice
from [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ];

--Removing negative quantities

select quantity 
from [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ]
where Quantity <=0;

delete from [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ]
where Quantity <=0;

select quantity 
from [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ];



--Removing NULL Customer ID
select customer_id
from [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ]
where Customer_ID is null;

delete from [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ]
where Customer_ID is null;

select customer_id
from [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ];

select Description
from [30PROJECTS].[dbo].[online_retail_II - Year 2009-2010 ]
where Description is null;