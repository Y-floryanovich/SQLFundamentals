CREATE TABLE [dbo].[Company] (
    [Id]                INT             NOT NULL PRIMARY KEY IDENTITY,
    [Name]              NVARCHAR(20)    NOT NULL,
    [AddressId]         INT             NOT NULL,
    CONSTRAINT [F_Company_Address$Id] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id])
);
