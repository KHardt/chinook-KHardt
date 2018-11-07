--Provide a query that includes the purchased track name AND artist name with each invoice line item.

select
i.invoiceLineId,
t.Name,
ar.Name
from InvoiceLine i
JOIN Track t ON i.TrackId = t.Trackid
JOIN Album a ON t.AlbumId = a.AlbumId
JOIN Artist ar ON a.ArtistId = ar.ArtistId
Order by ar.Name
--Order by i.InvoiceLineid

--select * from Track
