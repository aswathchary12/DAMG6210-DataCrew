-- Categorising Item view

create or replace view Item_division as
select item_id, item_name, price,
case
    when price < 25 then 'Cheap'
    when price > 75 then 'Exorbitant'
    else 'Affordable'
end as Division
from item;

----Customer order History
Create or replace view customer_order_history as
SELECT c.cust_id, c.cust_name, o.order_id,p.Amount, o.order_date
FROM Customer c
INNER JOIN Orderr o ON c.cust_id = o.cust_id
INNER JOIN PAYMENT p ON p.ORDER_ID = o.order_id
ORDER BY o.order_date;

select * from customer_order_history;