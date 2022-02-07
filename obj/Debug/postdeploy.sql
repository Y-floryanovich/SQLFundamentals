﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS(SELECT * FROM [dbo].[Address])
	BEGIN
		SET IDENTITY_INSERT [dbo].[Address] ON;

		INSERT [dbo].[Address] ([Id], [Street], [City], [State], [ZipCode]) VALUES (1, 'Park Avenue', 'New York', 'New York', '10001');
        INSERT [dbo].[Address] ([Id], [Street], [City], [State], [ZipCode]) VALUES (2, 'Broadway', 'New York', 'New York', '10002');
		
		SET IDENTITY_INSERT [dbo].[Address] OFF;
	END;

GO
IF NOT EXISTS(SELECT * FROM [dbo].[Company])
	BEGIN
		SET IDENTITY_INSERT [dbo].[Company] ON;

		INSERT [dbo].[Company] ([Id], [Name], [AddressId]) VALUES (1,'Microsoft', 1);
        INSERT [dbo].[Company] ([Id], [Name], [AddressId]) VALUES (2,'EPAM', 2);
		
		SET IDENTITY_INSERT [dbo].[Company] OFF;
	END;

GO
IF NOT EXISTS(SELECT * FROM [dbo].[Person])
GO
IF NOT EXISTS(SELECT * FROM [dbo].[Employee])
GO