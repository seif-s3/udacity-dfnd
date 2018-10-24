SELECT FirstName || ' ' || LastName AS full_name, 
			COUNT(InvoiceId) as invoices, 
			SUM(Total) AS total_spendings
FROM Customer JOIN Invoice ON (Customer.CustomerId = Invoice.CustomerId)
GROUP BY Customer.CustomerId
ORDER BY total_spendings DESC
LIMIT 5

