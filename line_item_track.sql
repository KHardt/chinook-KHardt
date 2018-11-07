--select * from InvoiceLine

select
i.invoiceLineId,
t.Name
from InvoiceLine i
JOIN Track t ON i.TrackId = t.Trackid
Order by i.InvoiceLineid
