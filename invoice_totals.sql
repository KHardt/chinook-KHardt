--select * from Invoice

select 
c.lastName,
c.Country,
i.InvoiceId,
e.lastName AS SalesAgent,
Sum(i.total)
FROM Invoice i
JOIN Customer c ON i.customerId = c.customerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
where e.Title = 'Sales Support Agent'
group By i.customerId

--select * from employee 


