--Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be included on the resulant table.

select * from track
select * from PlaylistTrack
select * from Playlist

select count(pt.trackId),
p.Name
from PlaylistTrack pt
JOIN playlist p on p.playlistId = pt.PlaylistId
group by pt.PlaylistId


