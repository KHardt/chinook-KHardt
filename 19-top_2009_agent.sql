--Which sales agent made the most in sales in 2009 / Use MAX as subquery

select firstname, lastName, MAX (Total) from (
select 
e.lastName, 
e.firstname,
SUM(i.total) AS Total,
count(i.invoiceId) AS TotalSales
from Invoice i
Join Customer c ON c.CustomerId = i.customerId
Join Employee e ON c.supportRepId = e.EmployeeId
where invoiceDate like '%2009%'
group by e.lastName)

