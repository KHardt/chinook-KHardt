select 
c.firstName,
c.lastName,
i.InvoiceId,
i.InvoiceDate,
i.BillingCountry
from Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
Where c.Country = 'Brazil'