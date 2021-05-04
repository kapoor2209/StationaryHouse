INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0e6e86d2-60c5-4a28-8b99-874f3bf8da50', N'power', N'power', N'db6f5899-af78-40ad-a3c0-9c4ca22440f5')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'550cc5d1-0b7e-459c-a1e7-2d811578afb9', N'power@stationeryhouse.com', N'POWER@STATIONERYHOUSE.COM', N'power@stationeryhouse.com', N'POWER@STATIONERYHOUSE.COM', 1, N'AQAAAAEAACcQAAAAEOEkyYvPNTyJ725+MnjXpnF81TsZXy4ceAZPJdow1F2LiFnZ4Ro8WJdpldiDGq+Gqg==', N'QHHU6ISPYHWOYCGENC4W76LHMLAFEJXL', N'80a0cf7e-3f6d-451d-b7a6-0cad3d7ba587', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e4fde931-81d6-44cb-882a-c67bf53ece1c', N'user@stationeryhouse.com', N'USER@STATIONERYHOUSE.COM', N'user@stationeryhouse.com', N'USER@STATIONERYHOUSE.COM', 1, N'AQAAAAEAACcQAAAAEDReeQ/iqNs5TI6NJBjq7wccLm/rjOzSmWzLE0Kqo84/DnL/WUfrXByRDM1nT+eHew==', N'LRN6KTRW7YINBFNKR2NHNH6O5LBI2FAY', N'2fd62580-558d-41a0-a2f3-1f24fa269a0a', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'550cc5d1-0b7e-459c-a1e7-2d811578afb9', N'0e6e86d2-60c5-4a28-8b99-874f3bf8da50')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'WRITING INSTRUMENTS')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'COLOURING ITEMS')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'FILES & FOLDERS')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'GIFTING ITEMS')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'OFFICE SUPPLIES')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (6, N'STUDENT ITEMS')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (7, N'PAPER ITEMS')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategories] ON 
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (1, N'Ball Pen', 1)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (2, N'Click Pen', 1)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (3, N'Gel Pen', 1)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (4, N'Artist Range', 2)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (5, N'Paint Brushes', 2)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (6, N'Chain Bags', 3)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (7, N'Plastic File', 3)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (8, N'Oil Pastels', 4)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (9, N'Sketch Pens', 4)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (10, N'Staple Pins', 5)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (11, N'Tapes', 5)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (12, N'Geometry Box', 6)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (13, N'Scales', 6)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (14, N'Registers', 7)
GO
INSERT [dbo].[SubCategories] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (15, N'Note Books', 7)
GO
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Stationeries] ON 
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (1, N'Accugrip Ball Pen', 60, N'.png', 1)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (2, N'Benz Ball Pen', 40, N'.png', 1)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (3, N'Black Jack Ball pen', 35, N'.png', 1)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (4, N'Black Jack gold Ball pen', 40, N'.png', 1)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (5, N'Butterflow Ballpen Clic', 20, N'.jpg', 2)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (6, N'CAESAR BALL PEN', 100, N'.png', 2)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (7, N'FLOWMATE BALL PEN', 10, N'.png', 2)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (8, N'Bronza Ball Pen', 85, N'.png', 2)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (9, N'Arrow Gel pen', 6, N'.png', 3)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (10, N'Butter Gel pen', 10, N'.png', 3)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (11, N'BUTTER GEL-SUPER HEROES/FANTASY PEN', 10, N'.png', 3)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (12, N'CELLO GELTECH GLITTER PEN', 100, N'.png', 3)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (13, N'CANVAS BOARD 10'' X 12''', 75, N'.jpg', 4)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (14, N'CANVAS BOARD 12"X 16"', 110, N'.jpg', 4)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (15, N'CANVAS BOARD 14"X 18"', 140, N'.jpg', 4)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (16, N'CANVAS BOARD 16'' X 20''', 180, N'.jpg', 4)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (17, N'PAINT BRUSH - TRI GRIP SH FLAT NO. 2', 200, N'.jpeg', 5)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (18, N'PAINT BRUSH - TRI GRIP SH FLAT NO. 5', 280, N'.jpg', 5)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (19, N'PAINT BRUSH - TRI GRIP SH FLAT NO.1', 200, N'.jpg', 5)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (20, N'PAINT BRUSH - TRI GRIP SH FLAT NO.10', 225, N'.jpg', 5)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (21, N'DOMS 12 SHADE OIL PASTEL', 35, N'.jpg', 8)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (22, N'DOMS 25 OIL PASTEL(P.P)', 100, N'.jpg', 8)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (23, N'DOMS 50 OIL PASTEL(P.P)', 200, N'.jpg', 8)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (24, N'OIL PASTEL ( 50 SHADES )', 170, N'.jpg', 8)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (25, N'DOMS 12 SHADE AQUA SKETCH PEN', 30, N'.jpg', 9)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (26, N'DOMS 12 SKETCH PEN MAX', 30, N'.jpg', 9)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (27, N'DOMS SKETCH PEN MINI 12 SHADE', 15, N'.jpg', 9)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (28, N'FUNTOON HAP SET OF 8(80) CELLO', 80, N'.png', 9)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (29, N'TAPE DISPENSER KTD-50', 440, N'.jpg', 11)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (30, N'TAPE DISPENSER KTD-75', 580, N'.jpg', 11)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (31, N'DOMS DOMMY GEOMETRY BOX', 60, N'.jpg', 12)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (32, N'DOMS GEOMITI GEOMETRY BOX', 80, N'.jpeg', 12)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (33, N'DOMS HI-TECH GEO. BOX', 95, N'.jpg', 12)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (34, N'DOMS X1 GEOMETRY BOX', 110, N'.jpg', 12)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (35, N'12" BROAD SCALE', 20, N'.jpg', 13)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (36, N'12" SLIM SCALE', 12, N'.jpg', 13)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (37, N'6" SCALE FABER CASTELL', 5, N'.jpg', 13)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (38, N'DOMS NOTE BOOK (MATH 1") PAGE -172', 40, N'.jpg', 15)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (39, N'DOMS NOTE BOOK (MATH 1") PAGE- 76 ', 20, N'.jpg', 15)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (40, N'DOMS NOTE BOOK (SL 3*1) PAGE-132', 30, N'.jpg', 15)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (41, N'DOMS NOTE BOOK (SL 3*1) PAGE-172', 40, N'.jpg', 15)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (42, N'DOMS A4 REGISTER PAGE-116', 50, N'.jpg', 14)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (43, N'DOMS A4 REGISTER PAGE-124', 40, N'.jpg', 14)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (44, N'DOMS A4 REGISTER PAGE-124', 45, N'.jpg', 14)
GO
INSERT [dbo].[Stationeries] ([StationeryID], [StationeryName], [Price], [Extension], [SubCategoryID]) VALUES (45, N'DOMS A4 REGISTER PAGE-164', 65, N'.jpg', 14)
GO
SET IDENTITY_INSERT [dbo].[Stationeries] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [Address], [OrderDate], [UserID], [Quantity], [UnitPrice], [StationeryID]) VALUES (1, N'New Street Near Tower House', CAST(N'2021-05-04T23:24:46.7089404' AS DateTime2), N'user@stationeryhouse.com', 15, 280, 18)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
