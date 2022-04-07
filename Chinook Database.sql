-- 1.
Select DISTINCT FirstName, LastName
from Customer c JOIN Invoice I
ON c.CustomerID=I.CustomerId
WHERE BillingCountry = 'Portugal' AND Country = 'Portugal'

-- 2.
SELECT NAME, MILLISECONDS
FROM TRACK
ORDER BY MILLISECONDS
LIMIT 5

SELECT NAME, MILLISECONDS
FROM TRACK
ORDER BY MILLISECONDS DESC
LIMIT 1,1

--3
SELECT NAME,TITLE FROM ALBUM A
JOIN Artist Ar
ON A.ArtistId = Ar.ArtistId
WHERE NAME = 'U2'

--4
SELECT NAME,TITLE FROM ALBUM A
JOIN Artist Ar
ON A.ArtistId =Ar.ArtistId 
WHERE NAME='U2'
[20:52]
SELECT G.NAME,SUM(IL.Quantity) FROM Track T
JOIN InvoiceLine IL
ON il.TrackId =T.TrackId
JOIN GENRE G
ON G.GENREID= T.GENREID 
GROUP BY G.NAME
ORDER BY G.NAME

--5
SELECT playlist.playlistid,track.name,album.title,artist.name, sum(invoiceline.quantity) as sales
FROM invoiceline
join invoice on invoiceline.invoiceid=invoice.invoiceid
join customer on invoice.customerid=customer.customerid
join track on invoiceline.trackid=track.trackid
join album on track.albumid=album.albumid
join artist on album.artistid = artist.artistid
join genre on track.genreid=genre.genreid
join playlisttrack on track.trackid=playlisttrack.trackid
join playlist on playlisttrack.playlistid = playlist.playlistid
where genre.name like 'pop' and customer.country like 'USA'