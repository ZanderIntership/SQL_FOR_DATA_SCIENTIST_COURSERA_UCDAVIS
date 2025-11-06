SELECT CustomerId, FirstName, LastName, Address,  UPPER(city || ' '  || country) 
  AS FullAddress FROM Customers;

SELECT LOWER(SUBSTR(FirstName, 1, 4) || SUBSTR(LastName, 1, 2)),FirstName AS UserId
  FROM Employees;


SELECT FirstName,LastName, HireDate, BirthDate FROM Employees WHERE HireDate - Birthdate > 15 ;

SELECT FirstName FROM Customers WHERE Fax IS NULL;

SELECT COUNT(DISTINCT CUSTOMERID), City FROM Customers GROUP BY City ORDER BY 
    COUNT(DISTINCT CUSTOMERID) DESC;

SELECT firstname || lastname || invoiceID AS CUSTOMERINVOICE FROM customers left join Invoices 
    ON customers.CustomerID = Invoices.CustomerID ORDER BY CUSTOMERINVOICE ASC;
