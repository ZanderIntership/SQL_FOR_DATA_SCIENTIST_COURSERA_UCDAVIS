SELECT name FROM tracks LEFT JOIN Albums ON
    tracks.albumid = Albums.albumid
    WHERE Albums.Title = 
    (SELECT Title FROM  Albums WHERE Title LIKE 'Californication' )

SELECT COUNT(DISTINCT InvoiceId), FirstName, LastName,City, Email
    FROM Customers LEFT JOIN invoices ON Customers.CustomerId = invoices.CustomerId
        GROUP BY Customers.CustomerId;

SELECT Name, Albums.Title, artistID, trackID FROM Tracks 
    LEFT JOIN Albums WHERE Tracks.AlbumId = Albums.AlbumId;

SELECT ReportsTo,EmployeeId,lastName FROM Employees ;

SELECT name, artists.artistId FROM artists Left Join Albums 
    ON artists.artistId = Albums.artistId 
        WHERE Albums.albumid IS NULL;

SELECT FirstName,LastName from Employees
Union
SELECT FirstName,LastName FROM Customers ORDER BY LastName DESC;

SELECT Customers.city, Invoices.BillingCIty FROM Customers
    Left Join Invoices ON Customers.CustomerId = Invoices.CustomerId
        WHERE Customers.city <> Invoices.BillingCIty;
