CREATE TRIGGER t_InsertEmployee
     ON dbo.[Employee]
     AFTER INSERT
     AS
     INSERT INTO dbo.[Company] (Name, AddressId)
     SELECT CompanyName, AddressId FROM INSERTED