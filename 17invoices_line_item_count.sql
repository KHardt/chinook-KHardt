--Provide a query that shows all Invoices but includes the # of invoice line items.

select * from Invoice
select * from InvoiceLine

select i.InvoiceId, count(i.invoiceId)
from Invoice i
join InvoiceLine il On il.InvoiceId = i.InvoiceId
group by i.InvoiceId