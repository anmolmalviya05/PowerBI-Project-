#to get only 5 rows from the data
SELECt * FROM sales.transactions limit 5;

# to get all the transaction from market code 001
select * from sales.transactions where market_code="Mark001";

#to get all transaction of USD currency
select * from sales.transactions where currency="USD";

#to get data of market code 001
select * from sales.markets where markets_code ="Mark001";

#to get record only of 2020
select * from sales.date where year >= 2020;

# to get record of may 2020
select * from sales.date where year=2020 and month_name = "May";

# Joining two tables
select sales.transactions.*,sales.date.*from sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date;

# to check revenue of 2020
select sum(sales.transactions.sales_amount) from sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where year=2020;

# to check revenue in chennai
select sum(sales.transactions.sales_amount) from sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2020 and sales.transactions.market_code="Mark001";

# to check distinct product sold in chennai
select distinct product_code from sales.transactions where market_code="Mark001";