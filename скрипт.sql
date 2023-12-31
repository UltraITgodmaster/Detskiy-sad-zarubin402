USE [master]
GO
/****** Object:  Database [kids]    Script Date: 13.06.2023 0:36:06 ******/
CREATE DATABASE [kids]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kids', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\kids.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'kids_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\kids_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kids].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kids] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kids] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kids] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kids] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kids] SET ARITHABORT OFF 
GO
ALTER DATABASE [kids] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kids] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [kids] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kids] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kids] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kids] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kids] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kids] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kids] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kids] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kids] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kids] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kids] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kids] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kids] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kids] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kids] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kids] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kids] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [kids] SET  MULTI_USER 
GO
ALTER DATABASE [kids] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kids] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kids] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kids] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [kids]
GO
/****** Object:  Table [dbo].[_deti]    Script Date: 13.06.2023 0:36:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_deti](
	[Код ребенка] [int] IDENTITY(1,1) NOT NULL,
	[ФИО] [nvarchar](max) NOT NULL,
	[Возраст] [nvarchar](max) NOT NULL,
	[Воспитатель] [nvarchar](max) NOT NULL,
	[Группа] [nchar](10) NOT NULL,
	[Программа] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gruppa-]    Script Date: 13.06.2023 0:36:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gruppa-](
	[Группа] [nchar](10) NOT NULL,
 CONSTRAINT [PK_gruppa-] PRIMARY KEY CLUSTERED 
(
	[Группа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[programma-]    Script Date: 13.06.2023 0:36:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[programma-](
	[код программы] [int] NOT NULL,
	[программа] [nvarchar](max) NULL,
 CONSTRAINT [PK_programma-] PRIMARY KEY CLUSTERED 
(
	[код программы] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[-vospitatel]    Script Date: 13.06.2023 0:36:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[-vospitatel](
	[ФИО] [nvarchar](max) NOT NULL,
	[Группа] [nchar](10) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[_deti] ON 

INSERT [dbo].[_deti] ([Код ребенка], [ФИО], [Возраст], [Воспитатель], [Группа], [Программа]) VALUES (1, N'Хиврич Александр Олегович ', N'5', N'Кривошеева Ольга Васильевна', N'11        ', N'Программа строится на понимании специфики образования ребенка дошкольного возраста, которая заключается в необходимости развития у каждого
воспитанника базиса личностной культуры, интеллигентности, обеспечения
его эмоционального благополучия, обогащения развития его способностей и
склонностей. Последние развиваются в условиях предоставления дошкольнику широкого выбора видов деятельности и содействия ребенку в овладении
ими на уровне самостоятельности и творчества. Данный уровень превращает деятельность из предмета познания ребенком опыта человечества в форму
саморазвития им своей индивидуальности. Поскольку возможности, старт и
динамика развития у каждого разные, это требует строительства целостного
педагогического процесса, содействующего амплификации развития и саморазвития каждого ребенка, направляемого самосознанием, и сохранению неповторимости его индивидуальности в коллективе сверстников.
Системный подход обусловил необходимость внедрения Программы через
педагогическую Технологию (парадигма В.П. Беспалько) и Инноватику (парадигма И.С. Ладенко).')
INSERT [dbo].[_deti] ([Код ребенка], [ФИО], [Возраст], [Воспитатель], [Группа], [Программа]) VALUES (2, N'Строцкий Антон Петрович', N'5', N'Кривошеева Ольга Васильевна', N'11        ', N'Программа строится на понимании специфики образования ребенка дошкольного возраста, которая заключается в необходимости развития у каждого
воспитанника базиса личностной культуры, интеллигентности, обеспечения
его эмоционального благополучия, обогащения развития его способностей и
склонностей. Последние развиваются в условиях предоставления дошкольнику широкого выбора видов деятельности и содействия ребенку в овладении
ими на уровне самостоятельности и творчества. Данный уровень превращает деятельность из предмета познания ребенком опыта человечества в форму
саморазвития им своей индивидуальности. Поскольку возможности, старт и
динамика развития у каждого разные, это требует строительства целостного
педагогического процесса, содействующего амплификации развития и саморазвития каждого ребенка, направляемого самосознанием, и сохранению неповторимости его индивидуальности в коллективе сверстников.
Системный подход обусловил необходимость внедрения Программы через
педагогическую Технологию (парадигма В.П. Беспалько) и Инноватику (парадигма И.С. Ладенко).')
INSERT [dbo].[_deti] ([Код ребенка], [ФИО], [Возраст], [Воспитатель], [Группа], [Программа]) VALUES (3, N'Малинова Анастасия Ивановна', N'5', N'Кривошеева Ольга Васильевна', N'11        ', N'Программа строится на понимании специфики образования ребенка дошкольного возраста, которая заключается в необходимости развития у каждого
воспитанника базиса личностной культуры, интеллигентности, обеспечения
его эмоционального благополучия, обогащения развития его способностей и
склонностей. Последние развиваются в условиях предоставления дошкольнику широкого выбора видов деятельности и содействия ребенку в овладении
ими на уровне самостоятельности и творчества. Данный уровень превращает деятельность из предмета познания ребенком опыта человечества в форму
саморазвития им своей индивидуальности. Поскольку возможности, старт и
динамика развития у каждого разные, это требует строительства целостного
педагогического процесса, содействующего амплификации развития и саморазвития каждого ребенка, направляемого самосознанием, и сохранению неповторимости его индивидуальности в коллективе сверстников.
Системный подход обусловил необходимость внедрения Программы через
педагогическую Технологию (парадигма В.П. Беспалько) и Инноватику (парадигма И.С. Ладенко).')
INSERT [dbo].[_deti] ([Код ребенка], [ФИО], [Возраст], [Воспитатель], [Группа], [Программа]) VALUES (4, N'Иванов Олег Алексеевич', N'5', N'Кривошеева Ольга Васильевна', N'11        ', N'Программа строится на понимании специфики образования ребенка дошкольного возраста, которая заключается в необходимости развития у каждого
воспитанника базиса личностной культуры, интеллигентности, обеспечения
его эмоционального благополучия, обогащения развития его способностей и
склонностей. Последние развиваются в условиях предоставления дошкольнику широкого выбора видов деятельности и содействия ребенку в овладении
ими на уровне самостоятельности и творчества. Данный уровень превращает деятельность из предмета познания ребенком опыта человечества в форму
саморазвития им своей индивидуальности. Поскольку возможности, старт и
динамика развития у каждого разные, это требует строительства целостного
педагогического процесса, содействующего амплификации развития и саморазвития каждого ребенка, направляемого самосознанием, и сохранению неповторимости его индивидуальности в коллективе сверстников.
Системный подход обусловил необходимость внедрения Программы через
педагогическую Технологию (парадигма В.П. Беспалько) и Инноватику (парадигма И.С. Ладенко).')
INSERT [dbo].[_deti] ([Код ребенка], [ФИО], [Возраст], [Воспитатель], [Группа], [Программа]) VALUES (5, N'Былков Сергей Сергеевич', N'5', N'ы', N'11        ', N'Программа строится на понимании специфики образования ребенка дошкольного возраста, которая заключается в необходимости развития у каждого
воспитанника базиса личностной культуры, интеллигентности, обеспечения
его эмоционального благополучия, обогащения развития его способностей и
склонностей. Последние развиваются в условиях предоставления дошкольнику широкого выбора видов деятельности и содействия ребенку в овладении
ими на уровне самостоятельности и творчества. Данный уровень превращает деятельность из предмета познания ребенком опыта человечества в форму
саморазвития им своей индивидуальности. Поскольку возможности, старт и
динамика развития у каждого разные, это требует строительства целостного
педагогического процесса, содействующего амплификации развития и саморазвития каждого ребенка, направляемого самосознанием, и сохранению неповторимости его индивидуальности в коллективе сверстников.
Системный подход обусловил необходимость внедрения Программы через
педагогическую Технологию (парадигма В.П. Беспалько) и Инноватику (парадигма И.С. Ладенко).')
SET IDENTITY_INSERT [dbo].[_deti] OFF
INSERT [dbo].[gruppa-] ([Группа]) VALUES (N'11        ')
INSERT [dbo].[gruppa-] ([Группа]) VALUES (N'12        ')
INSERT [dbo].[gruppa-] ([Группа]) VALUES (N'13        ')
INSERT [dbo].[programma-] ([код программы], [программа]) VALUES (1, N'Программа строится на понимании специфики образования ребенка дошкольного возраста, которая заключается в необходимости развития у каждого
воспитанника базиса личностной культуры, интеллигентности, обеспечения
его эмоционального благополучия, обогащения развития его способностей и
склонностей. Последние развиваются в условиях предоставления дошкольнику широкого выбора видов деятельности и содействия ребенку в овладении
ими на уровне самостоятельности и творчества. Данный уровень превращает деятельность из предмета познания ребенком опыта человечества в форму
саморазвития им своей индивидуальности. Поскольку возможности, старт и
динамика развития у каждого разные, это требует строительства целостного
педагогического процесса, содействующего амплификации развития и саморазвития каждого ребенка, направляемого самосознанием, и сохранению неповторимости его индивидуальности в коллективе сверстников.
Системный подход обусловил необходимость внедрения Программы через
педагогическую Технологию (парадигма В.П. Беспалько) и Инноватику (парадигма И.С. Ладенко).')
ALTER TABLE [dbo].[_deti]  WITH CHECK ADD  CONSTRAINT [FK__deti_gruppa-] FOREIGN KEY([Группа])
REFERENCES [dbo].[gruppa-] ([Группа])
GO
ALTER TABLE [dbo].[_deti] CHECK CONSTRAINT [FK__deti_gruppa-]
GO
ALTER TABLE [dbo].[-vospitatel]  WITH CHECK ADD  CONSTRAINT [FK_-vospitatel_gruppa-] FOREIGN KEY([Группа])
REFERENCES [dbo].[gruppa-] ([Группа])
GO
ALTER TABLE [dbo].[-vospitatel] CHECK CONSTRAINT [FK_-vospitatel_gruppa-]
GO
ALTER TABLE [dbo].[-vospitatel]  WITH CHECK ADD  CONSTRAINT [FK_-vospitatel_gruppa-1] FOREIGN KEY([Группа])
REFERENCES [dbo].[gruppa-] ([Группа])
GO
ALTER TABLE [dbo].[-vospitatel] CHECK CONSTRAINT [FK_-vospitatel_gruppa-1]
GO
USE [master]
GO
ALTER DATABASE [kids] SET  READ_WRITE 
GO
