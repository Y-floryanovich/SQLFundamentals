CREATE TABLE [dbo].[Employee] (
    [Id]                INT             NOT NULL PRIMARY KEY IDENTITY,
    [AddressId]         INT             NOT NULL,
    [PersonId]          INT             NOT NULL,
    [CompanyName]       NVARCHAR(20)    NOT NULL,
    [Position]          NVARCHAR(30)    NULL,
    [EmployeeName]      NVARCHAR(100)   NULL,
    CONSTRAINT [F_Employee_Person$Id] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([Id]),
    CONSTRAINT [F_Employee_Address$Id] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id])
);
