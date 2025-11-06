SELECT * FROM albums left join artists ON 
    albums.artistid = artists.artistid 
        WHERE artists.name LIKE 'Led Zeppelin';

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

SELECT COUNT(unitprice),Title,Name FROM tracks left JOIN albums
    WHERE albums.albumid = tracks.Albumid GROUP BY albums.albumid
        HAVING albums.Title LIKE 'Big Ones';
