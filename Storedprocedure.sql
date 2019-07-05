--Stored Procedure

-- FindRide: Will be used to find car available in the region with the details of the driver with requirements.

USE Project2_UberComp1;

/*
-- SP1: This Stored Procedure help us find all available cars in required location.
GO 
CREATE PROC findCityRide
    @Location VARCHAR(30) = NULL
	AS 
BEGIN
SELECT FirstName + ' ' + LastName AS FullName, Make + ' ' + Model AS CarName, Color, PlateNo, Class, PhoneNumber
FROM Drivers JOIN Car ON Drivers.CarInfo = Car.PlateNo
WHERE City = @Location
END;


EXEC findCityRide 'NYC';


--SP2
GO 
CREATE PROC findRide1
    @Location VARCHAR(30) = NULL,
	@class VARCHAR(30) = Null,
    @Bags INT = 0,
    @Capacity INT = 0
	AS 
BEGIN
SELECT FirstName + ' ' + LastName AS FullName, Make + ' ' + Model AS CarName, Color, PlateNo, Class, PhoneNumber
FROM Drivers JOIN Car ON Drivers.CarInfo = Car.PlateNo
WHERE City = @Location AND Class = @class AND BagAllowance >= @Bags AND Capacity >= @Capacity
END;


--EXEC findRide1 'Syracuse','Regular', 2, 1;

--SP3:AVG RATING: Stored Procedure to get avg ratings og users 

GO 
CREATE PROC AvgCustomerRating
    @Name VARCHAR(30) = '%'
AS 
BEGIN 
SELECT CustomerName, AVG(CustomerScore) AS Rating
FROM Trips
WHERE CustomerName = @Name
GROUP BY CustomerName
END;

GO 
CREATE PROC AvgDriverRating
    @Name VARCHAR(30) = '%'
AS 
BEGIN 
SELECT DriverName, AVG(DriverScore) AS Rating
FROM Trips
WHERE DriverName = @Name
Group BY DriverName
END;



EXEC AvgCustomerRating 'Genaya'
EXEC AvgDriverRating 'Keith'

*/
