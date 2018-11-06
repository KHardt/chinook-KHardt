Select 
    (Select Count(*) 
    From Invoice
    Where InvoiceDate like "2009%") 
        as "2009 Invoices",
    (Select Count(*)
    From Invoice
    Where InvoiceDate like "2011%")
        as "2011 Invoices"