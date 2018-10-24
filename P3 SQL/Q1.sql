SELECT MediaType.Name, COUNT(*) AS count
FROM Track JOIN MediaType ON (Track.MediaTypeId = MediaType.MediaTypeId)
GROUP BY MediaType.MediaTypeId
ORDER BY count DESC;
