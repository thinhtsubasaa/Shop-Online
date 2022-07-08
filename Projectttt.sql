
CREATE TABLE [dbo].[Account](
	[uID] [nchar](20) NOT NULL,
	[password] [nchar](30) NULL,
	[name] [nvarchar](50) NULL,
	[type] [nchar](20) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
))
CREATE TABLE [dbo].[Cart](
	[uID] [nchar](20) NOT NULL,
	[pID] [nchar](20) NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[uID] ASC,
	[pID] ASC
))
CREATE TABLE [dbo].[Category](
	[cID] [nchar](20) NOT NULL,
	[name] [nvarchar](max) NULL,
	[required] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cID] ASC
))
CREATE TABLE [dbo].[Feedback](
	[pID] [nchar](20) NULL,
	[content] [nvarchar](max) NULL,
	[date] [date] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
))
CREATE TABLE [dbo].[Order](
	[uID] [nchar](20) NOT NULL,
	[pID] [nchar](20) NOT NULL,
	[amount] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
))
CREATE TABLE [dbo].[Product](
	[pID] [nchar](20) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [nchar](20) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[pID] ASC
))
INSERT [dbo].[Account] ([uID], [password], [name], [type]) VALUES (N'admin               ', N'1                             ', N'Admin', N'Admin               ')
GO
INSERT [dbo].[Account] ([uID], [password], [name], [type]) VALUES (N'thinh                ', N'1                             ', N'Ngọc Thịnh', N'customer            ')
GO
INSERT [dbo].[Account] ([uID], [password], [name], [type]) VALUES (N'bảo               ', N'1                             ', N'Thái Bảo', N'employee            ')
GO
INSERT [dbo].[Account] ([uID], [password], [name], [type]) VALUES (N'Phúc              ', N'1                             ', N'Thăng Phúc', N'customer            ')
GO
INSERT [dbo].[Account] ([uID], [password], [name], [type]) VALUES (N'Thành               ', N'1                             ', N'Mạnh Thành', N'employee            ')
GO
INSERT [dbo].[Category] ([cID], [name], [required]) VALUES (N'Asus             ', N'Asus', 10)
GO
INSERT [dbo].[Category] ([cID], [name], [required]) VALUES (N'Dell                ', N'Dell', 300)
GO
INSERT [dbo].[Category] ([cID], [name], [required]) VALUES (N'Macbook            ', N'Macbook', 150)
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([uID], [pID], [amount], [id]) VALUES (N'thinh                 ', N'Pro16m1max         ', 4, 8)
GO
INSERT [dbo].[Order] ([uID], [pID], [amount], [id]) VALUES (N'Thành                ',  N'Pro16m1max           ', 1, 11)
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Product] ([pID], [name], [image], [price], [description], [cateID]) VALUES (N'ROG Flow Z13              ',N'Asus Gaming ROG Flow Z13 GZ301ZC-D110W', N'https://cdn.tgdd.vn/Products/Images/44/274539/asus-gaming-rog-flow-z13-gz301z-i7-ld110w-2.jpg?fbclid=IwAR01ihUSxz_xmCDcDv2HhAoBCBJ5LCI_1jF1M748tUJ7QiMV5hUO-ZjwfCU', 50000000, N'Sở hữu sức mạnh hiệu năng đột phá của dòng laptop CPU thế hệ 12 và card màn hình rời NVIDIA cùng thiết kế siêu mỏng nhẹ, độc đáo đến từ nhà Asus, laptop Asus Gaming ROG Flow Z13 GZ301Z (LD110W) là chiếc laptop gaming hoàn hảo sẵn sàng chinh phục mọi đấu trường ảo cùng bạn. ', N'Asus              ')
GO
INSERT [dbo].[Product] ([pID], [name], [image], [price], [description], [cateID]) VALUES (N'Alienware M15 R6          ',N'Dell Alienware M15 R6 P109F001BBL', N'https://laptopvang.com/wp-content/uploads/2021/07/Screenshot_4-600x386.jpg', 40000000, N'Dell Alienware M15 R6 P109F001BBL được trang bị đầy đủ các cổng kết nối cần thiết để người dùng kết nối máy với các thiết bị ngoại vi. Máy có 03 cổng USB Type-A 3.2 Gen 1, một cổng USB Type-C 3.2 Gen 2 có hỗ trợ Thunderbolt ™ 4 , một cổng HDMI, một cổng nguồn, một cổng Ethernet RJ-45 và jack cắm tai nghe 3.5m. Điều đặc biệt trong phiên bản này chính là cổng Graphics Amplifier đặc trưng.', N'Dell              ')
GO
INSERT [dbo].[Product] ([pID], [name], [image], [price], [description], [cateID]) VALUES (N'Pro16m1max                ',N'Macbook Pro 16 m1 max', N'https://cdn.tgdd.vn/Products/Images/44/253636/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-600x600.jpg?fbclid=IwAR1b5-K3oFkCbRVT2c0AlDsWKigyEmce0OqIlomRTIM5womarm1Xmf_cChc', 92900000, N'Không chỉ là điểm nhận biết trên các thiết bị smartphone, hiện nay tai thỏ đã xuất hiện trên thế hệ Macbook mới nhất. Macbook Pro 16 M1 Max với thiết kế độc đáo, màn hình chất lượng mang lại trải nghiệm vượt  trội. Máy tính Macbook Pro 16 inch 2021 được trang bị cấu hình cực khủng với chip Apple M1 Max với 10CPU, 32GPU đi kèm dung lượng lên đến RAM 32GB và bộ nhớ SSD 1TB mang lại hiệu suất vượt trội.', N'Macbook            ')
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [fk_cart_acc] FOREIGN KEY([uID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [fk_cart_acc]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [fk_cart_product] FOREIGN KEY([pID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [fk_cart_product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [fk_order_acc] FOREIGN KEY([uID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [fk_order_acc]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [fk_order_product] FOREIGN KEY([pID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [fk_order_product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_Product_Cate] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_Product_Cate]
GO