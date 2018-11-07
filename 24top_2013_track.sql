--Provide a query that shows the most purchased track of 2013
--Count(t.name) 
--Sum(il.quantity
select t.name, Sum(il.quantity) as PurchaseCount
from track t
JOIN InvoiceLine il ON t.TrackId = il.trackId
JOIN Invoice i ON i.invoiceId = il.invoiceId
where i.InvoiceDate between '2013-01-01T00:00:00' and '2013-12-31T23:59:59'
group by t.name
order by PurchaseCount desc


