SELECT COUNT(AlbumId) FROM albums 
    Left Join artists ON albums.AlbumId = artists.artistid; 

SELECT title,invoice_items.unitPrice FROM artists LEFT JOIN 
    albums ON artists.artistId = albums.artistId LEFT JOIN
        tracks ON albums.albumid = tracks.albumid LEFT JOIN
            invoice_items ON tracks.Trackid = invoice_items.Trackid
                WHERE artists.Name LIKE 'Audioslave';

SELECT FirstName,LastName FROM customers LEFT JOIN invoices ON
    customers.Customerid = invoices.Customerid
        LEFT JOIN invoice_items ON
            invoices.invoiceId = invoice_items.invoiceId
                WHERE invoice_items.invoiceid IS NULL;

SELECT COUNT(unitprice) FROM tracks left JOIN albums
    WHERE albums.albumid = tracks.Albumid GROUP BY albums.albumid
        HAVING albums.Title LIKE 'Big Ones';
