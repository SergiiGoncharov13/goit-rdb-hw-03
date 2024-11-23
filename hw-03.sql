use mydb;
-- 1
select * from products;

select name, phone from shippers;

-- 2
select avg(price) from products;

select max(price) from products;

select min(price) from products;

-- 3
select distinct category_id, price from products
order by price desc
limit 10;

-- 4
select count(*) as product_count
from products
where price between 20 and 100;

-- 5
select supplier_id,
		count(*) as product_count,
        avg(price) as average_price
from products
group by supplier_id;

