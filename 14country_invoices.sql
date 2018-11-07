--Provide a query that shows the # of invoices per country. HINT: GROUP BY

select count()
InvoiceId, BillingCountry
from Invoice
group by BillingCountry

--to test
--select * from Invoice
--where billingCountry = 'Canada'