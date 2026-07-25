SELECT 
a.Department
,a.Employee
,a.Salary
FROM (SELECT 
d.name as "Department"
, e.name as "Employee"
, e.salary as "Salary"
, DENSE_RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) as "sal_rnk"
FROM Employee e
LEFT JOIN Department d on e.departmentId = d.id) a 
WHERE a.sal_rnk <= 3