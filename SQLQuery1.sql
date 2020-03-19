Select * from Genre

SELECT
    Id,
    Title,
    SongLength,                                                  
    ReleaseDate,
    GenreId,
    ArtistId,
    AlbumId
FROM Song
WHERE SongLength > 100
;

SELECT s.Title,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;

INSERT INTO Genre (Label) VALUES ('Techno');

select SongLength from Song where Id = 18;

-- The following is the output you get when you run the query above.


update Song
set SongLength = 515
where Id = 18;

-- Once you run the update statement, in order to make sure the value has changed, we run the select query again.
select SongLength from Song where Id = 18;

delete from Song where Id = 18;

--Query all of the entries in the Genre table
Select * from Genre

--Using the INSERT statement, add one of your favorite artists to the Artist table
Insert Into Artist (ArtistName, YearEstablished) Values ('Devendra Banhart', 2002);

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
Insert into Album (Title, ReleaseDate, AlbumLength, [Label], ArtistId, GenreId) Values ('Mala', 2013, 2438, 'Nonesuch Records', 28, 16);

--Using the INSERT statement, add some songs that are on that album to the Song table.
insert into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) Values ('Mi Negrita', 204, '03/12/2013', 16, 28, 23);

--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. 
--Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
--Reminder: Direction of join matters. Try the following statements and see the difference in results.
--SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id;
--SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;
SELECT s.Title, al.Title, ar.ArtistName FROM Album al
LEFT JOIN Artist ar ON ar.Id = al.ArtistId
LEFT JOIN Song s ON s.ArtistId = al.ArtistId
WHERE al.Id = 23