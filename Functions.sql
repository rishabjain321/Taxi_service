-- FUNCTIONS       
/*
--Expired Insurance: Checks for Expired Insurance On cars
GO
CREATE FUNCTION ExpiredInsurance()
RETURNS TABLE

     RETURN 
    (SELECT FirstName + ' ' + LastName AS FullName, I.InsuranceID 
    FROM Insurance as I JOIN Drivers as D ON I.InsuranceID = D.InsuranceID
    WHERE I.DateOfExpiry < GETDATE());

SELECT * FROM dbo.ExpiredInsurance();

--function 2
CREATE FUNCTION TotalEarningg(@Name VARCHAR(30))
RETURNS TABLE

    RETURN 
    (SELECT TOP 5 FirstName + ' ' + LastName AS FullName, CostPaid + Tip AS Total
    FROM Trips JOIN Drivers ON Trips.DriverName = Drivers.FirstName
    WHERE FirstName + ' ' + LastName = @Name
	ORDER BY (CostPaid + Tip) desc);
*/	

	SELECT * FROM dbo.TotalEarningg('Bhavesh Jain');
