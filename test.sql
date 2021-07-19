select count(*) from Track;
select count(*) from Artist;

select Title, Name from Album
Join Artist on AlbumID = Artist.ArtistID