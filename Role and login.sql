--ROLE, Login
USE Project2_UberComp1;
CREATE ROLE InsertDriverDetails;
CREATE LOGIN Project2 WITH PASSWORD='123456',
	DEFAULT_DATABASE=Project2_UberComp1;

CREATE USER Rishab FOR LOGIN Project2;
ALTER ROLE InsertDriverDetails ADD MEMBER Rishab; 
