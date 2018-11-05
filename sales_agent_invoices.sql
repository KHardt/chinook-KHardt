select 
e.FirstName,
e.Lastname,
c.customerId,
i.InvoiceId
from Employee e 
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.customerId = i.CustomerId
where e.Title = 'Sales Support Agent'
order by e.LastName




