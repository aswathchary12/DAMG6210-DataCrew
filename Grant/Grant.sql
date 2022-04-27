-- GRANTING PERMISSIONS

CREATE USER Customer1 IDENTIFIED BY Oracle_12345;
CREATE USER Seller1 IDENTIFIED BY Oracle_12345;
CREATE USER Shipper1 IDENTIFIED BY Oracle_12345;

grant create session to Customer1;
grant create session to Seller1;
grant create session to Shipper1;