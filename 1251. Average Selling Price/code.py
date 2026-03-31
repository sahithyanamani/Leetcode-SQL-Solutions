# we want left join because the righttable unitssoled could have zero entries if no productus are sold

select a.product_id, ifnull(round(sum(price*units)/sum(units),2),0) as average_price
from Prices as a left join UnitsSold as b
on a.product_id = b.product_id and purchase_date between start_date and end_date
group by product_id;
