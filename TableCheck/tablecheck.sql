
-- To drop tables, if existing
DECLARE
  tname varchar2(50);
BEGIN
  select table_name into tname from user_tables where table_name='PRODUCT_PRICE_TRACKER';
  execute immediate 'drop table '||tname;
  select table_name into tname from user_tables where table_name='ITEM_CART';
  execute immediate 'drop table '||tname;
  select table_name into tname from user_tables where table_name='ITEM';
  execute immediate 'drop table '||tname;
  select table_name into tname from user_tables where table_name='SHIPMENT';
  execute immediate 'drop table '||tname;
  select table_name into tname from user_tables where table_name='PAYMENT';
  execute immediate 'drop table '||tname;
  select table_name into tname from user_tables where table_name='ORDERR';
  execute immediate 'drop table '||tname;
  select table_name into tname from user_tables where table_name='CART';
  execute immediate 'drop table '||tname;
END;
/