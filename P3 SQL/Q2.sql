SELECT Genre.Name, COUNT(*) AS genre_count
FROM Track JOIN Genre ON (Track.GenreId = Genre.GenreId)
GROUP BY Genre.GenreId
ORDER BY genre_count DESC
LIMIT 5;


