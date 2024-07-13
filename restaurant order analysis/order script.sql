use restaurant_db;
#view oreder details table
select * from order_details;

#what is the date range of table
select * from order_details order by order_date;
#or
select max(order_date), min(order_date) from order_details;

#how many orders were made within this data range
select count(distinct order_id) from order_details;

#how many items were ordered within this data range
select count(*) from order_details;

#which orders has the most no. of items
select order_id, count(item_id) as num_items from order_details group by order_id order by num_items desc;

#how many order had more than 12 items
select count(*) from (select order_id, count(item_id) as num_items from order_details group by order_id  having num_items>12) as num_order;