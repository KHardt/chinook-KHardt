--Provide a query that shows total sales made by each sales agent.
select * from Invoice
Select * from Customer

select 
e.lastName, 
e.firstname,
count(i.invoiceId) AS TotalSales
from Invoice i
Join Customer c ON c.CustomerId = i.customerId
Join Employee e ON c.supportRepId = e.EmployeeId
group by e.lastName



