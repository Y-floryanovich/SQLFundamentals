CREATE PROCEDURE [dbo].[sp_InsertEmployee] 
    @companyName NVARCHAR(20),
    @street NVARCHAR(50),
    @employeeName NVARCHAR(100) = null,
    @firstName NVARCHAR(50) = null,
    @lastName NVARCHAR(50) = null,
    @position NVARCHAR(30) = null,
    @state NVARCHAR(50) = null,
    @zipCode NVARCHAR(50) = null,
	@city NVARCHAR(20) = null
AS
    IF (NULLIF(TRIM(@employeeName), '')) IS NOT NULL
	OR (NULLIF(TRIM(@firstName), '') IS NOT NULL
	OR (NULLIF(TRIM(@lastName), '')) IS NOT NULL)

BEGIN
		declare @addressId int
		declare @personId int

		INSERT INTO Person
		(FirstName, LastName)
		VALUES (COALESCE(@firstName,''), COALESCE(@lastName,''))
		SET @personId = @@IDENTITY

		INSERT INTO Address
		(Street, City, State, ZipCode)
		VALUES(@street, @city, @state, @zipCode)
		SET @addressId = @@IDENTITY

		INSERT INTO Employee
		(AddressId, PersonId, CompanyName, Position, EmployeeName)
		values (@addressId, @personId, SUBSTRING(@companyName, 1, 20), @position, @employeeName)
	END;

