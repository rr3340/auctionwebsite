CREATE VIEW Total_Profit_Category1 AS
SELECT
item_category,
SUM(Profit) as Total_Profit_Per_Category,
Count(item_category) as Total_Quantity
FROM
	Totals
	group by item_category;


CREATE VIEW Total_Profit_Person1 AS
SELECT
full_name,
SUM(Profit) as Total_Profit_Per_Person,
Count(full_name) as Sellers_Item_Quantity
FROM
	Totals
	group by full_name;
    
SELECT * FROM Total_Profit_Category1;
SELECT * FROM Total_Quantity_Category;
    
SELECT * FROM Total_Profit_Person;
SELECT * FROM Sellers_Quantity;

CREATE VIEW Category_Average AS
SELECT
item_category,
Total_Profit_Per_Category/Total_Quantity AS Average
FROM
	Total_Profit_Category1
    Group by item_category;
    
SELECT * FROM Category_Average;

CREATE VIEW Personal_Profit_Average AS
SELECT
full_name,
Total_Profit_Per_Person/Sellers_Item_Quantity AS Average
FROM
	Total_Profit_Person1
    Group by full_name;
    
SELECT * FROM Personal_Profit_Average;