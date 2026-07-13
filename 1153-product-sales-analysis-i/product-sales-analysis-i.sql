SELECT 
product_name
, year
, price 
-- , sale_id 
FROM Sales s
LEFT JOIN Product p on p.product_id = s.product_id