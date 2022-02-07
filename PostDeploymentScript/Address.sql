IF NOT EXISTS(SELECT * FROM [dbo].[Address])
	BEGIN
		SET IDENTITY_INSERT [dbo].[Address] ON;

		INSERT [dbo].[Address] ([Id], [Street], [City], [State], [ZipCode]) VALUES (1, 'Park Avenue', 'New York', 'New York', '10001');
        INSERT [dbo].[Address] ([Id], [Street], [City], [State], [ZipCode]) VALUES (2, 'Broadway', 'New York', 'New York', '10002');
		
		SET IDENTITY_INSERT [dbo].[Address] OFF;
	END;
