Select * from cleaned_retail_store_sales;

-- 1. What are the top product categories by total revenue?
select Category, SUM(`Total Spent`)as total_revenue 
from cleaned_retail_store_sales
group by Category
order by total_revenue DESC;

-- 2. What is the monthly sales trend?
	select DATE_FORMAT(`Transaction Date`, '%Y-%m') AS month,
			SUM(`Total Spent`) as monthly_sales
    from cleaned_retail_store_sales
	group by month
	order by monthly_sales DESC;

-- 3. Which payment method is most preferred?
 Select (`Payment Method`),COUNT(*) as total_transactions
 from cleaned_retail_store_sales
 group by (`Payment Method`);
 
 -- 4. How does revenue differ between Online and In-Store sales? 
 select Location, SUM(`Total Spent`)as total_revenue 
 from cleaned_retail_store_sales
 group by Location;
 
 -- 5. What is the average order value (AOV) by location
 select Location, AVG(`Total Spent`)as avg_order_value 
 from cleaned_retail_store_sales
 group by Location;
 
 -- 6. Which categories have the highest quantity sold?
 select Category, sum(Quantity) as total_quantity_aold
 from cleaned_retail_store_sales
 group by Category;
  
-- 7. Do discounted transactions generate higher sales?
select `Discount Applied`, 
COUNT(*) as transactions,
AVG(`Total Spent`) as avg_spend
from cleaned_retail_store_sales
group by `Discount Applied`; 

-- 8. Which categories perform best online vs in-store?
SELECT Category, Location, SUM(`Total Spent`) AS revenue
FROM cleaned_retail_store_sales
GROUP BY Category, Location
ORDER BY revenue DESC;



 