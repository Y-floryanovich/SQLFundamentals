IF NOT EXISTS(SELECT * FROM [dbo].[Company])
	BEGIN
		SET IDENTITY_INSERT [dbo].[Company] ON;

		INSERT [dbo].[Company] ([Id], [Name], [AddressId]) VALUES (1,'Microsoft', 1);
        INSERT [dbo].[Company] ([Id], [Name], [AddressId]) VALUES (2,'EPAM', 2);
		
		SET IDENTITY_INSERT [dbo].[Company] OFF;
	END;
