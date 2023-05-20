alter table dbo.Products
add constraint df_Products_Price
default 1 for [Price]

alter table dbo.Products
with check
add constraint chk_price_cost 
check (price <= 2 * cost);


alter table dbo.Products
with check
add constraint uc_Name
unique ([Name])

