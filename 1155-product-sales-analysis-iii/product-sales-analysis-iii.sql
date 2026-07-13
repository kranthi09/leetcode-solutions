SELECT  
s.product_id
, s.year as first_year 
, s.quantity
, s.price
FROM Sales s 
JOIN (SELECT sa.product_id, MIN(sa.year) AS first_year FROM Sales sa GROUP BY 1) fy on fy.product_id = s.product_id AND s.year = fy.first_year;