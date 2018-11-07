--Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be included on the resulant table.

select * from track
select * from PlaylistTrack
select * from Playlist

select count() 
playListId
from PlaylistTrack
group by PlaylistId