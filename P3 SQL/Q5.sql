WITH country_genres AS (
SELECT COUNT(*) as Purchases, Customer.Country,  Genre.Name, Genre.GenreId
FROM Invoice JOIN InvoiceLine ON (Invoice.InvoiceId = InvoiceLine.InvoiceId)
JOIN Customer ON (Customer.CustomerId = Invoice.CustomerId)
JOIN Track ON (Track.TrackId = InvoiceLine.TrackId)
JOIN Genre ON (Track.GenreId = Genre.GenreId)
GROUP BY Customer.Country, Genre.GenreId
)
SELECT *
FROM country_genres AS cg
WHERE cg.Purchases = 
(SELECT MAX(Purchases) FROM country_genres AS cg2 WHERE cg.Country = cg2.Country)


