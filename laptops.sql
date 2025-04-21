use laptops;

select * from laptop_prices;

# showing the products with the highest price values
select company, product, price_euros
from laptop_prices
order by price_euros desc;

# count products by company
SELECT Company, COUNT(*) AS Number_of_products
FROM laptop_prices
GROUP BY Company
order by Number_of_products desc;

# get the percent of each company
SELECT Company, COUNT(*) AS Number_of_products,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS Percent_of_total
FROM laptop_prices
GROUP BY Company
ORDER BY Number_of_products DESC;


# most common Operating system
select OS, COUNT(*) AS Count_OS
from laptop_prices
group by OS
order by Count_OS desc
limit 10;

# the most common RAM used in the products
select RAM, COUNT(*) AS Count_RAM
from laptop_prices
group by RAM
order by Count_RAM desc
limit 5;

# the most common GPU by company
select GPU_company, COUNT(*) AS Count_GPU_model
from laptop_prices
group by GPU_company
order by Count_GPU_model desc
limit 5;

# the most common GPU by company and model
select GPU_company, GPU_model, COUNT(*) AS Count_GPU_model
from laptop_prices
group by GPU_company, GPU_model
order by Count_GPU_model desc
limit 5;

select * from laptop_prices;

# The most common laptop types
select TypeName, COUNT(*) AS Count_TypeName
from laptop_prices
group by TypeName
order by Count_TypeName desc
limit 5;

# The most common laptop types and company
select company, TypeName, COUNT(*) AS Count_TypeName
from laptop_prices
group by company, TypeName
order by Count_TypeName desc
limit 5;

# The most common laptop types and company and the percent for each
select company, TypeName, COUNT(*) AS Count_TypeName,
	ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS Percent_of_total
from laptop_prices
group by company, TypeName
order by Count_TypeName desc
limit 5;

# The most common laptop types
select Screen, COUNT(*) AS Count_Screen
from laptop_prices
group by Screen
order by Count_Screen desc
limit 5;

# The most common screen types and company
select company, Screen, COUNT(*) AS Count_Screen
from laptop_prices
group by company, Screen
order by Count_Screen desc
limit 5;

# The most common screen types and company
select company, Screen, COUNT(*) AS Count_Screen,
	ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS Percent_of_total
from laptop_prices
group by company, Screen
order by Count_Screen desc
limit 5;


# checking if the screen is touch or not by company
select company, touchscreen, COUNT(*) AS Count_touchscreen
from laptop_prices
group by company, touchscreen
order by Count_touchscreen desc;

# checking if the screen is touch or no
select touchscreen, COUNT(*) AS Count_touchscreen
from laptop_prices
group by touchscreen
order by Count_touchscreen desc;

select * from laptop_prices;

# checking if there is IPS panel or not by company
select company, IPSpanel, COUNT(*) AS Count_IPSpanel
from laptop_prices
group by company, IPSpanel
order by Count_IPSpanel desc;

# checking if there is IPS panel or no
select IPSpanel, COUNT(*) AS Count_IPSpanel
from laptop_prices
group by IPSpanel
order by Count_IPSpanel desc;

# checking if there is retina display or not by company
select company, RetinaDisplay, COUNT(*) AS Count_RetinaDisplay
from laptop_prices
group by company, RetinaDisplay
order by Count_RetinaDisplay desc;

# checking if there is retina display 
select RetinaDisplay, COUNT(*) AS Count_RetinaDisplay
from laptop_prices
group by RetinaDisplay
order by Count_RetinaDisplay desc;

# primary storage
select PrimaryStorageType, COUNT(*) AS Count_PrimaryStorageType
from laptop_prices
group by PrimaryStorageType
order by Count_PrimaryStorageType desc;

# secondary storage
select SecondaryStorageType, COUNT(*) AS Count_SecondaryStorageType
from laptop_prices
group by SecondaryStorageType
order by Count_SecondaryStorageType desc;

# secondary storage
select SecondaryStorageType, COUNT(*) AS Count_SecondaryStorageType,
	ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS Percent_of_total
from laptop_prices
group by SecondaryStorageType
order by Count_SecondaryStorageType desc;

select * from laptop_prices;

# weight by model
select product, company, weight, COUNT(*) AS Count_weight
from laptop_prices
group by product, company, weight
order by Count_weight desc;

# weight by model
select company, weight, COUNT(*) AS Count_weight
from laptop_prices
group by company, weight
order by Count_weight desc;

select * from laptop_prices;

# inches by company
select company, inches, COUNT(*) AS Count_inches
from laptop_prices
group by company, inches
order by Count_inches desc;

# inches by model
select company, inches, COUNT(*) AS Count_inches
from laptop_prices
group by company, inches
order by Count_inches desc;









