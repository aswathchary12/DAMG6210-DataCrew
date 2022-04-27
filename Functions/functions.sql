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