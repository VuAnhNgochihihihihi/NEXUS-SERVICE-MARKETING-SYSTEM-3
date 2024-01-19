USE [master]
GO
/****** Object:  Database Nexusmarketing    Script Date: 16/01/2024 09:06:30 ******/
CREATE DATABASE Nexusmarketing
GO
ALTER DATABASE Nexusmarketing SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC Nexusmarketing.[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE Nexusmarketing SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE Nexusmarketing SET ANSI_NULLS OFF 
GO
ALTER DATABASE Nexusmarketing SET ANSI_PADDING OFF 
GO
ALTER DATABASE Nexusmarketing SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE Nexusmarketing SET ARITHABORT OFF 
GO
ALTER DATABASE Nexusmarketing SET AUTO_CLOSE OFF 
GO
ALTER DATABASE Nexusmarketing SET AUTO_SHRINK OFF 
GO
ALTER DATABASE Nexusmarketing SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE Nexusmarketing SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE Nexusmarketing SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE Nexusmarketing SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE Nexusmarketing SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE Nexusmarketing SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE Nexusmarketing SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE Nexusmarketing SET  DISABLE_BROKER 
GO
ALTER DATABASE Nexusmarketing SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE Nexusmarketing SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE Nexusmarketing SET TRUSTWORTHY OFF 
GO
ALTER DATABASE Nexusmarketing SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE Nexusmarketing SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE Nexusmarketing SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE Nexusmarketing SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE Nexusmarketing SET RECOVERY SIMPLE 
GO
ALTER DATABASE Nexusmarketing SET  MULTI_USER 
GO
ALTER DATABASE Nexusmarketing SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE Nexusmarketing SET DB_CHAINING OFF 
GO
ALTER DATABASE Nexusmarketing SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE Nexusmarketing SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE Nexusmarketing SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE Nexusmarketing SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE Nexusmarketing SET QUERY_STORE = ON
GO
ALTER DATABASE Nexusmarketing SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE Nexusmarketing
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 16/01/2024 09:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandId] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](30) NULL,
	[Phone_Number] [int] NULL,
	[Address] [nvarchar](100) NULL,
	[created_at] [timestamp] NULL,
	[customerName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emplooyee]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emplooyee](
	[Employee_ID] [int] NOT NULL,
	[EmployeeName] [nvarchar](30) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](30) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](250) NULL,
	[phone_number] [int] NULL,
	[created_at] [timestamp] NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeesGroup]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeesGroup](
	[Employee_ID] [int] NOT NULL,
	[ojbectID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC,
	[ojbectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupOjbect]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupOjbect](
	[ojbectID] [int] NOT NULL,
	[groupID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ojbectID] ASC,
	[groupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[groupID] [int] NOT NULL,
	[groupName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[groupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ojbect]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ojbect](
	[ojbectID] [int] NOT NULL,
	[ojbectName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ojbectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_details]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_details](
	[Price] [int] NULL,
	[OrderID] [int] NOT NULL,
	[Service_ID] [int] NOT NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[Service_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[OrderFristDate] [datetime] NULL,
	[status] [bit] NULL,
	[delivered] [bit] NULL,
	[deliveredDate] [datetime] NULL,
	[Discount] [int] NULL,
	[Employee_ID] [int] NULL,
	[payId] [int] NULL,
	[storeID] [int] NULL,
	[CustomerID] [int] NULL,
	[OrderEndDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pay]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pay](
	[payId] [int] NOT NULL,
	[payName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[payId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[CateID] [int] NOT NULL,
	[status] [bit] NULL,
	[sort] [int] NULL,
	[ParentID] [int] NULL,
	[created_at] [timestamp] NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProdutID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[status] [bit] NULL,
	[Image] [nvarchar](500) NULL,
	[Price] [int] NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[Warranty] [int] NULL,
	[Desription] [nvarchar](500) NULL,
	[Detail] [ntext] NULL,
	[BrandId] [int] NULL,
	[SupplierId] [int] NULL,
	[created_at] [timestamp] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProdutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductServies]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductServies](
	[ProdutID] [int] NOT NULL,
	[Service_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProdutID] ASC,
	[Service_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Service_ID] [int] NOT NULL,
	[ServiceName] [nvarchar](50) NULL,
	[ProductID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Service_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[storeID] [int] NOT NULL,
	[storeName] [char](18) NULL,
PRIMARY KEY CLUSTERED 
(
	[storeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 16/01/2024 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[employeesGroup]  WITH CHECK ADD FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Emplooyee] ([Employee_ID])
GO
ALTER TABLE [dbo].[employeesGroup]  WITH CHECK ADD FOREIGN KEY([ojbectID])
REFERENCES [dbo].[ojbect] ([ojbectID])
GO
ALTER TABLE [dbo].[GroupOjbect]  WITH CHECK ADD FOREIGN KEY([groupID])
REFERENCES [dbo].[Groups] ([groupID])
GO
ALTER TABLE [dbo].[GroupOjbect]  WITH CHECK ADD FOREIGN KEY([ojbectID])
REFERENCES [dbo].[ojbect] ([ojbectID])
GO
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD FOREIGN KEY([Service_ID])
REFERENCES [dbo].[Services] ([Service_ID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Emplooyee] ([Employee_ID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([payId])
REFERENCES [dbo].[Pay] ([payId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([storeID])
REFERENCES [dbo].[Store] ([storeID])
GO
USE [master]
GO
ALTER DATABASE Nexusmarketing SET  READ_WRITE 
GO
