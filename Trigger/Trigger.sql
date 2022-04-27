--Trigger
--To save details of the Item for which the price is updated(i.e Either the item is overpriced or more similar items are avaialble in that region)

CREATE OR REPLACE TRIGGER after_item_price_update AFTER
UPDATE OF price ON item
FOR EACH ROW
BEGIN
dbms_output.put_line(:old.price);
dbms_output.put_line(:new.price);
INSERT INTO product_price_tracker (
product_id,
item_name,
old_price,
new_price,
update_ts
) VALUES (
:old.item_id,
:old.item_name,
:old.price,
:new.price,
to_char(sysdate, 'DD-MON-YYYY')
);
END;
/