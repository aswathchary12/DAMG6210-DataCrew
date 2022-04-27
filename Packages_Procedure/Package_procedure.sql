--Packages

CREATE OR REPLACE PACKAGE ITEM_PACKAGE AS
PROCEDURE Based_On_Category(categ_name in categoryy.category_name%type);
PROCEDURE Price_Based(p in number);
END;
/
