Use restaurant_db;

#view the menu item table
select * from menu_items;

#find the no.of items on the menu
select count(menu_item_id) as total_items from menu_items;
#or
select count(*) from menu_items;


#what are the least and most expensive items on the menu
select max(price) from menu_items;
select min(price) from menu_items;
#or
select * from menu_items order by price;

#How many italian dishes are on the menu
select count(menu_item_id) from menu_items where category="Italian";

#what are the least and most expensive italian dishes on the menu
select max(price) from menu_items where category="Italian";
select min(price) from menu_items where category="Italian";
#or
select * from menu_items where category="italian" order by price;

#how many dishes are in each category
select distinct category from menu_items;
select count(menu_item_id) from menu_items;
select count(menu_item_id) from menu_items where category="American" ;
select count(menu_item_id) from menu_items where category="Asian" ;
select count(menu_item_id) from menu_items where category="Mexican" ;
select count(menu_item_id) from menu_items where category="Italian" ;
#or
select category, count(menu_item_id) as no_of_dishes from menu_items group by category;

#avg dish price within each category
select avg(price) from menu_items where category="American";
select avg(price) from menu_items where category="Italian";
select avg(price) from menu_items where category="Mexican";
select avg(price) from menu_items where category="Asian";
#or
select category, avg(price) as average_money from menu_items group by category;
