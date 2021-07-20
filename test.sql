/*** Syntax for all SQL commands ***/

select count(*) from Track;
select count(*) from Artist;

select Title, Name from Album
Join Artist on AlbumID = Artist.ArtistID limit 5; 

select * From Track Where Composer = 'U2';

Select Track.Name, Title as Album, Artist.Name as Atrist from Track
    Inner Join Album on Track.AlbumId = Album.AlbumId
    Inner Join Artist on Album.ArtistID = Artist.ArtistId
    Where Track.Name = 'Believe'; 

  

/*** Returns tracks and media types ***/

Select Track.Name, MediaType.Name FROM Track 
inner Join MediaType on Track.MediaTypeId = MediaType.MediaTypeId;

/*** Returns Tracks with Genre 'Jazz' ***/
select Track.Name, Genre.Name FROM Track
inner join Genre on Track.GenreId = Genre.GenreId
where Genre.Name = 'Jazz';


/*** Returns playlists that have a track count = 1 ***/
SELECT Playlist.Name as Playlist, COUNT(*) From Playlist 
INNER JOIN PlaylistTrack on Playlist.PlaylistId = PlaylistTrack.PlaylistId  
GROUP BY Playlist HAVING count(*) = 1;

/*** Orders selection from invoice date descending limited to 3 answers ***/
Select InvoiceDate, BillingAddress, Total from Invoice
    Order By InvoiceDate desc
    Limit 3; 

/*** Orders Employees from hiredate and emplyee number descending ***/
select EmployeeId, LastName, FirstName, HireDate from Employee
order by HireDate desc, EmployeeId desc
limit 3;


/** Query showing our 10 biggest invoices by Total value, in descending order ***/
select
    concat(Customer.FirstName, " ", Customer.LastName) as Name,
    Invoice.InvoiceDate as Date,
    Invoice.Total
from Invoice
inner join Customer ON Invoice.CustomerId = Customer.CustomerId
order by Total desc, InvoiceDate desc
limit 10;


/** The Min Function **/
Select Min(BirthDate) From Employee;

/** The Max Function **/
Select Max(HireDate) From Employee;




