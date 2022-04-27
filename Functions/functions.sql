--To get a count of all items a seller posted

create or replace function totalProducts(sellerId in NUMBER)
    return number
    is
    total number(2):=0;
    begin
        select count(*) into total
        from item
        where SELLER_ID=sellerId;
        return total;
    end;
    /
   
declare
c number(4);
begin
c := totalProducts(6002);
DBMS_output.put_line('Total number of items the seller sells is : '|| c);
end;
/

--To get Order Time
CREATE OR REPLACE FUNCTION Get_Order_Time (Paym_ID NUMBER)
RETURN NUMBER
AS
 v_temp NUMBER(10);
BEGIN
SELECT  s.SHIPMENT_DATE- p.PAYMENT_Date INTO v_temp
FROM SHIPMENT s
INNER JOIN PAYMENT p
on s.PAYMENT_ID = p.PAYMENT_ID
where s.PAYMENT_ID = Paym_ID;
RETURN v_temp;
END;
/