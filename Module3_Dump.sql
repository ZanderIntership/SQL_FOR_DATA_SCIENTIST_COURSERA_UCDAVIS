SELECT * FROM Tracks WhERE milliseconds >= 5000000;

SELECT * FROM Invoices WHERE Total > 4 and Total < 16;

SELECT * FROM Customers where State IN ("RJ","Df","AB","BC","CA","WA","NY");

SELECT * FROM Invoices WHERE CustomerID In (56,58) and Total Between 1 and 5;

SELECT * FROM Tracks where name like 'All%'

Select * FROM Customers Where email like 'J%' and email like '%gmail.com%';

SELECT * FROM Invoices where BillingCity IN ('Brasília','Edmonton','Vancouver ') ORDER BY InvoiceId desc;

SELECT CustomerID,
       COUNT(*) AS OrderCount
FROM Invoices
GROUP BY CustomerID
ORDER BY OrderCount DESC;


Select COUNT(DISTINCT TrackId) as TrackCount FROM Tracks GROUP BY AlbumId  HAVING (TrackCount >= 12 );
