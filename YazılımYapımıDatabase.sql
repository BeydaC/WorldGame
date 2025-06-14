USE [veriYapi2]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8.06.2025 22:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PasswordHash] [nvarchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Userss]    Script Date: 8.06.2025 22:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Userss](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PasswordHash] [nvarchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserWordStatus]    Script Date: 8.06.2025 22:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserWordStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[WordID] [int] NOT NULL,
	[Step] [int] NULL,
	[NextReviewDate] [date] NOT NULL,
	[IsKnown] [bit] NULL,
	[LastAnswerDate] [date] NULL,
	[CorrectInARow] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WordProgress]    Script Date: 8.06.2025 22:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordProgress](
	[ProgressID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[WordID] [int] NULL,
	[Step1] [bit] NULL,
	[Step2] [bit] NULL,
	[Step3] [bit] NULL,
	[Step4] [bit] NULL,
	[Step5] [bit] NULL,
	[Step6] [bit] NULL,
	[LastAnsweredDate] [date] NULL,
	[IsKnown] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProgressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Words]    Script Date: 8.06.2025 22:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Words](
	[WordID] [int] IDENTITY(1,1) NOT NULL,
	[English] [nvarchar](20) NOT NULL,
	[Turkish] [nvarchar](20) NOT NULL,
	[Sentence] [nvarchar](50) NULL,
	[ImagePath] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[WordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [UserName], [Email], [PasswordHash]) VALUES (1, N'beyda', N'xdfcgvhbj', N'kmkl')
INSERT [dbo].[Users] ([UserID], [UserName], [Email], [PasswordHash]) VALUES (2, N'melisa', N'gfghbjn', N'cvbn')
INSERT [dbo].[Users] ([UserID], [UserName], [Email], [PasswordHash]) VALUES (3, N'erva', N'vhbhjnjk', N'ghbjnkm')
INSERT [dbo].[Users] ([UserID], [UserName], [Email], [PasswordHash]) VALUES (4, N'zeren', N'cvhbjn', N'nkm')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[WordProgress] ON 

INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2025-06-08' AS Date), 1)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (2, 1, 6, 1, 1, 1, 1, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (3, 1, 5, 1, 0, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (4, 1, 4, 1, 0, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (5, 1, 2, 1, 1, 1, 1, 1, 1, CAST(N'2025-06-03' AS Date), 1)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (6, 1, 7, 1, 1, 1, 1, 1, 1, CAST(N'2025-06-08' AS Date), 1)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (7, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-06-04' AS Date), NULL)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-06-04' AS Date), NULL)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (9, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-06-04' AS Date), NULL)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (10, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-06-04' AS Date), NULL)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-06-04' AS Date), NULL)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-06-04' AS Date), NULL)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (13, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-06-04' AS Date), NULL)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (14, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (15, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (16, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (17, 1, 8, 1, 1, 1, 1, 1, 1, CAST(N'2025-06-03' AS Date), 1)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (18, 1, 9, 1, 1, 1, 1, 1, 1, CAST(N'2025-06-04' AS Date), 1)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (19, 1, 10, 1, 0, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (20, 1, 11, 1, 1, 1, 1, 1, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (21, 1, 12, 1, 1, 1, 1, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (22, 1, 13, 1, 0, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (23, 1, 14, 1, 0, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (24, 1, 15, 1, 0, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (25, 1, NULL, 1, 1, 1, 0, 0, 0, CAST(N'2024-06-04' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (26, 1, 16, 1, 0, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (27, 1, 17, 1, 1, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (28, 1, 18, 1, 1, 1, 1, 1, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (29, 1, 19, 1, 1, 1, 1, 0, 0, CAST(N'2025-04-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (30, 1, 20, 1, 1, 1, 1, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (31, 1, 21, 1, 0, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (32, 1, 22, 1, 0, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (33, 1, 23, 1, 1, 1, 1, 1, 1, CAST(N'2025-06-08' AS Date), 1)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (34, 1, 24, 0, 0, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (35, 1, 25, 1, 1, 1, 1, 1, 1, CAST(N'2025-06-08' AS Date), 1)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (36, 1, 26, 1, 1, 1, 1, 1, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (37, 1, 27, 1, 1, 1, 1, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (38, 1, 28, 1, 1, 1, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (39, 1, 29, 1, 1, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (40, 1, 30, 1, 0, 0, 0, 0, 0, CAST(N'2025-06-08' AS Date), 0)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (41, 1, 31, 1, 1, 1, 1, 1, 1, CAST(N'2025-06-08' AS Date), 1)
INSERT [dbo].[WordProgress] ([ProgressID], [UserID], [WordID], [Step1], [Step2], [Step3], [Step4], [Step5], [Step6], [LastAnsweredDate], [IsKnown]) VALUES (42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-06-04' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[WordProgress] OFF
GO
SET IDENTITY_INSERT [dbo].[Words] ON 

INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (1, N'bee', N'arı', N'bee is a animal', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (2, N'dog ', N'köpek', N'Their dog is bite me', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (4, N'cat', N'kedi', N'my favorite animal is cat', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (5, N'strawberry', N'çilek', N'strawberry looks so good', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (6, N'banan', N'muz', N'there is banana country', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (7, N'blueberry', N'yabanmersini', N'I heard a song called blueberry', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (8, N'orange', N'portakal', N'orange is a name of fruit', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (9, N'book', N'kitap', N'I rented 2 books today', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (10, N'cake', N'pasta', N'Cakes made with love', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (11, N'bowl', N'kase', N'No one knows what is bowl', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (12, N'muffin', N'kek', N'Muffins so expensive in bakery', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (13, N'hamburger', N'hamburger', N'Hamburgers hometown is germany', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (14, N'steak', N'biftek', N'my fav ddorm food is steak', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (15, N'flour', N'un', N'we shouls use flour for dough', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (16, N'corn', N'mısır', N'Who ate all corn', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (17, N'coffe', N'kahve', N'The coffee was salted', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (18, N'moon', N'ay', N'there is just moon and stars', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (19, N'sun', N'güneş', N'His son name is sun', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (20, N'plane', N'uçak', N'plane was grey', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (21, N'car', N'araba', N'I dont evene have a car', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (22, N'cloud', N'bulut', N'there is pink coluds', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (23, N'view', N'manzara', N'The view worth to watch', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (24, N'snow', N'kar', N'Wh cares about the snow', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (25, N'lake', N'göl', N'There is a body in the lake', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (26, N'building', N'yapı', N'There is no building just woods', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (27, N' flower', N'çiçek', N'I can buy myself flowers', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (28, N'chess', N'satranç', N'Playing chess is so cool to you', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (29, N'drink', N'içecek', N'Drinks on me', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (30, N'statue ', N'heykel', N'Museum contains statues', NULL)
INSERT [dbo].[Words] ([WordID], [English], [Turkish], [Sentence], [ImagePath]) VALUES (31, N'bottle', N'şişe', N'The bottle of water', NULL)
SET IDENTITY_INSERT [dbo].[Words] OFF
GO
/****** Object:  Index [UQ_User_Word]    Script Date: 8.06.2025 22:15:07 ******/
ALTER TABLE [dbo].[UserWordStatus] ADD  CONSTRAINT [UQ_User_Word] UNIQUE NONCLUSTERED 
(
	[UserID] ASC,
	[WordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserWordStatus] ADD  DEFAULT ((0)) FOR [Step]
GO
ALTER TABLE [dbo].[UserWordStatus] ADD  DEFAULT ((0)) FOR [IsKnown]
GO
ALTER TABLE [dbo].[UserWordStatus] ADD  DEFAULT ((0)) FOR [CorrectInARow]
GO
ALTER TABLE [dbo].[UserWordStatus]  WITH CHECK ADD  CONSTRAINT [FK_UserWordStatus_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserWordStatus] CHECK CONSTRAINT [FK_UserWordStatus_Users]
GO
ALTER TABLE [dbo].[UserWordStatus]  WITH CHECK ADD  CONSTRAINT [FK_UserWordStatus_Words] FOREIGN KEY([WordID])
REFERENCES [dbo].[Words] ([WordID])
GO
ALTER TABLE [dbo].[UserWordStatus] CHECK CONSTRAINT [FK_UserWordStatus_Words]
GO
