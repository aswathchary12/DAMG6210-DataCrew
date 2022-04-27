-- Categorising Item view

create or replace view Item_division as
select item_id, item_name, price,
case
    when price < 25 then 'Cheap'
    when price > 75 then 'Exorbitant'
    else 'Affordable'
end as Division
from item;