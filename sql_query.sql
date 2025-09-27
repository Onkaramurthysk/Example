SELECT * FROM sales_database.sales_data;
# Load sales_data.csv file
Load data local infile 'c:/Desktop/Examples/sales_data.csv'
into table sales_data
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
Ignore 1 rows;

# a. Count the total number of records.
select count(*) from sales_data;

# Find the average sales amount per transaction.
select round(avg(total_sales),2) as avg from sales_data;

# Ensure there are no duplicate OrderId values.
select distinct(OrderId) from sales_data