USE [master]
GO
/****** Object:  Database [QuetzalExpre]    Script Date: 23/06/2015 9:01:37 a. m. ******/
CREATE DATABASE [QuetzalExpre] ON  PRIMARY 
( NAME = N'QuetzalExpre', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\QuetzalExpre.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuetzalExpre_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\QuetzalExpre_log.ldf' , SIZE = 11200KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuetzalExpre] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuetzalExpre].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuetzalExpre] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuetzalExpre] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuetzalExpre] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuetzalExpre] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuetzalExpre] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuetzalExpre] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuetzalExpre] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuetzalExpre] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuetzalExpre] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuetzalExpre] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuetzalExpre] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuetzalExpre] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuetzalExpre] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuetzalExpre] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuetzalExpre] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuetzalExpre] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuetzalExpre] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuetzalExpre] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuetzalExpre] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuetzalExpre] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuetzalExpre] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuetzalExpre] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuetzalExpre] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuetzalExpre] SET RECOVERY FULL 
GO
ALTER DATABASE [QuetzalExpre] SET  MULTI_USER 
GO
ALTER DATABASE [QuetzalExpre] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuetzalExpre] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuetzalExpre', N'ON'
GO
USE [QuetzalExpre]
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administrador](
	[CodAdministrador] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
 CONSTRAINT [PK_Administrador] PRIMARY KEY CLUSTERED 
(
	[CodAdministrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aduana]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aduana](
	[CodAduana] [int] NOT NULL,
	[porcentaje] [int] NOT NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_Aduana] PRIMARY KEY CLUSTERED 
(
	[CodAduana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Casilla]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casilla](
	[codCasilla] [int] NOT NULL,
	[DPI] [int] NULL,
 CONSTRAINT [PK_Casilla] PRIMARY KEY CLUSTERED 
(
	[codCasilla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categori]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categori](
	[codCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Porcentaje] [float] NULL,
 CONSTRAINT [PK_Categori] PRIMARY KEY CLUSTERED 
(
	[codCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[DPI] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[Nit] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](50) NULL,
	[NumTarjeta] [int] NULL,
	[Usuario] [varchar](50) NULL,
	[Contra] [varchar](50) NULL,
	[Casilla] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[DPI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contrato]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrato](
	[codContrato] [int] NULL,
	[codSucursal] [int] NULL,
	[codEmpleado] [int] NULL,
	[codJefe] [int] NULL,
	[codDep] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[CodDep] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[CodDep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Director]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Director](
	[CodDirector] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[codEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Sueldo] [smallmoney] NULL,
	[Sucursal] [varchar](50) NULL,
	[Departamento] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](50) NULL,
	[Usuario] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
	[Puesto] [varchar](50) NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[codEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[codFactura] [int] NOT NULL,
	[codPedido] [int] NOT NULL,
	[codEmpleado] [int] NOT NULL,
	[codGanancia] [int] NOT NULL,
	[codAduana] [int] NOT NULL,
	[Total] [smallmoney] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[codFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ganancia]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ganancia](
	[codGancia] [int] NOT NULL,
	[Porcentaje] [int] NOT NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_Ganancia] PRIMARY KEY CLUSTERED 
(
	[codGancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lote]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lote](
	[Llave] [int] NOT NULL,
	[codLote] [int] NULL,
	[codSucursal] [int] NULL,
	[Fecha] [date] NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_Lote] PRIMARY KEY CLUSTERED 
(
	[Llave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paquete](
	[codPaquete] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Peso] [int] NULL,
	[Precio] [float] NULL,
	[Categoria] [varchar](50) NULL,
	[Casilla] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
	[Lote] [int] NULL,
 CONSTRAINT [PK_Paquete] PRIMARY KEY CLUSTERED 
(
	[codPaquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pedido](
	[codPedido] [int] NOT NULL,
	[codCasilla] [int] NULL,
	[codlote] [int] NULL,
	[Fecha] [date] NULL,
	[codSucursal] [int] NULL,
	[Estado] [varchar](50) NULL,
	[Busqueda] [int] NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[codPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sede]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sede](
	[codSede] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sede] PRIMARY KEY CLUSTERED 
(
	[codSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 23/06/2015 9:01:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[codSucursal] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [varchar](15) NULL,
	[Direccion] [varchar](50) NULL,
	[Capacidad] [int] NULL,
	[codSede] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [QuetzalExpre] SET  READ_WRITE 
GO
