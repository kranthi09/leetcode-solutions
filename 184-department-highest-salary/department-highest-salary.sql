SELECT 
a.Department
, a.Employee
, a.Salary
FROM (SELECT 
d.name as "Department"
, e.name as "Employee"
, e.salary
, DENSE_RANK() OVER(PARTITION BY d.name ORDER BY Salary DESC) AS "sal_rnk"
FROM Employee e 
LEFT JOIN Department d on d.id = e.departmentId) a 
WHERE sal_rnk = 1