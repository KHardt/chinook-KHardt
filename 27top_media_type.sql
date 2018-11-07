--Provide a query that shows the most purchased Media Type

select MediaTypePurchases.Name, max(mediaTypePurchases.purchaseCount)
from (
select 
mt.Name,
sum(il.quantity) as PurchaseCount
from MediaType mt
JOIN track t ON mt.MediaTypeId = t.MediaTypeid
join InvoiceLine il on il.trackId = t.trackid
group by mt.name
order by PurchaseCount desc
--limit 1
) MediaTypePurchases
