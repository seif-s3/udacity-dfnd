SELECT Artist.Name, COUNT(*) AS count, SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice) AS gross
FROM InvoiceLine JOIN Track ON (Track.TrackId = InvoiceLine.TrackId)
JOIN Album ON (Track.AlbumId = Album.AlbumId)
JOIN Artist ON (Album.ArtistId = Artist.ArtistId)
GROUP BY Artist.ArtistId
ORDER BY 2 DESC
LIMIT 5;

