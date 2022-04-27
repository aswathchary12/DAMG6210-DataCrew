--Packages

CREATE OR REPLACE PACKAGE ITEM_PACKAGE AS
PROCEDURE Based_On_Category(categ_name in categoryy.category_name%type);
PROCEDURE Price_Based(p in number);
END;
/

--Procedure Based_on_category

--Displaying all the items according to the category
CREATE OR REPLACE PACKAGE BODY ITEM_PACKAGE AS
PROCEDURE Based_On_Category(categ_name in categoryy.category_name%type) IS
p_categ_name categoryy.category_name%type;
p_item_name item.item_name%type;
CURSOR cur2 IS
            SELECT category_name, item_name from categoryy c, item i
            WHERE c.category_id = i.category_id
            AND category_name = categ_name;
BEGIN
    OPEN cur2;
    LOOP
        FETCH cur2 INTO p_categ_name, p_item_name;
        EXIT WHEN cur2%notfound;
        dbms_output.put_line('For the category: ' || p_categ_name || ', The Item : - ' || p_item_name);
    END LOOP;
    CLOSE cur2;
EXCEPTION
        WHEN no_data_found THEN
        dbms_output.put_line('Items does not exist');
END Based_On_Category;
