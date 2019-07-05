--VIEWS
/*
-- View1: To keep track of how many active accounts exist
CREATE VIEW ActiveAccounts
AS 
SELECT FirstName + ' ' + LastName AS FullName, 'Is Active' AS State
FROM Customers
WHERE Active = 1;

 --SELECT * FROM ActiveAccounts;


 -- View2: Helps Bussiness to find which trips were bad and conatct and let driver know that such things aren't good for bussiness
CREATE VIEW BadRides
AS 
SELECT TripID, DriverName, CustomerScore 
FROM Trips
WHERE CustomerScore < 3;
 

--SELECT * FROM BadRides;


--View3: This helps to find how many particular type of classses are in bussiness 
--and hence decisions can be made what cars are needed or extra.

CREATE VIEW CarClass
AS
SELECT FirstName + ' ' + LastName AS FullName, Make + ' ' + Model AS CarType, Class, PlateNo, City, PhoneNumber
FROM Drivers JOIN Car ON Drivers.CarInfo = Car.PlateNo


SELECT * FROM CarClass
WHERE Class = 'Regular' 

--View4: This provides how many major(Big Money) trips are made.
CREATE VIEW BigTrips
AS
SELECT TripID, FirstName + ' ' + LastName AS FullName, Make + ' ' + Model AS CarType, Class, PlateNo, Drivers.City, CostPaid
FROM Drivers JOIN Trips ON Drivers.FirstName = Trips.DriverName 
	JOIN Car ON Drivers.CarInfo = Car.PlateNo
Where CostPaid > 30;


SELECT * FROM BigTrips

--View5: This shows us what drivers have turned there status off and cant be provided rides until its on.
CREATE VIEW NonActiveDrivers1
AS 
SELECT FirstName + LastName AS FullName, 'Not Active' AS Active
FROM Drivers
WHERE ACTIVE = 0;


 SELECT * FROM NonActiveDrivers1;
 */
