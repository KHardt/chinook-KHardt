-- Which sales agent made the most in sales over all?

select firstname, lastName, MAX (Total) from (
select 
e.lastName, 
e.firstname,
SUM(i.total) AS Total,
count(i.invoiceId) AS TotalSales
from Invoice i
Join Customer c ON c.CustomerId = i.customerId
Join Employee e ON c.supportRepId = e.EmployeeId
group by e.lastName)


