use restaurant_db;
select * from menu_items;
select * from order_details;

select * from order_details od left join menu_items mi on od.item_id=mi.menu_item_id;

#what were the least and most ordered items? What categories were they in?
select category, item_name, count(order_details_id) as num_purchases from order_details od left join menu_items mi on od.item_id=mi.menu_item_id group by item_name, category order by num_purchases desc;

# what were the top 5 orders that spend the most money
select item_name, order_id, sum(price) as total_spend from order_details od left join menu_items mi on od.item_id=mi.menu_item_id group by item_name, order_id order by total_spend desc limit 5;

# view the details of highest spend order. what insights can you gather from that?
select category, count(item_id) as num_item from order_details od left join menu_items mi on od.item_id=mi.menu_item_id where order_id=740 group by category order by num_item desc ;

# view the details of top 5highest spend order. What insights can yougatherfrom it.
select category, order_id, count(item_id) as num_item from order_details od left join menu_items mi on od.item_id=mi.menu_item_id where order_id in (2000, 740, 2025, 1956, 440) group by order_id,category order by num_item desc limit 5;