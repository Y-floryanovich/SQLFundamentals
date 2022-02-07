CREATE VIEW [dbo].[EmployeeInfo] AS 

	SELECT TOP (100) e.Id,
	COALESCE(EmployeeName, CONCAT(FirstName,' ',LastName)) as EmployeeFullName,
	CONCAT(ZipCode, '_', State, ',', City, '-', Street) as EmployeeFullAddress,
	CONCAT (CompanyName, '(', Position, ')') as EmployeeCompanyInfo
	FROM Employee e
	JOIN Person p ON p.Id = e.PersonId
	JOIN Address a ON a.Id = e.AddressId
	ORDER BY CompanyName, City ASC