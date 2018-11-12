--Provide a query that shows all the Tracks, but displays no IDs. 
--The result should include the Album name, Media type and Genre.

select t.Name AS TrackName,
al.Title AS AlbumName,
m.Name AS MediaType,
g.Name AS GenreName
from track t
JOIN Album Al ON al.AlbumId = t.AlbumId
JOIN MediaType m ON m.MediaTypeId = t.mediatypeId
JOIN Genre g ON g.genreId = t.genreId

