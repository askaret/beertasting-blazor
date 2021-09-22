USE [master]
GO

/****** Object:  Database [BouvetBeertastingDb]    Script Date: 22.09.2021 15:49:09 ******/
CREATE DATABASE [BouvetBeertastingDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BouvetBeertastingDb_Data', FILENAME = N'D:\code\bouvet\db\BouvetBeertasting\BouvetBeertastingDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BouvetBeertastingDb_Log', FILENAME = N'D:\code\bouvet\db\BouvetBeertasting\log\BouvetBeertastingDb.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BouvetBeertastingDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BouvetBeertastingDb] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET ARITHABORT OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BouvetBeertastingDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BouvetBeertastingDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET  ENABLE_BROKER 
GO

ALTER DATABASE [BouvetBeertastingDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO

ALTER DATABASE [BouvetBeertastingDb] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BouvetBeertastingDb] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [BouvetBeertastingDb] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET RECOVERY FULL 
GO

ALTER DATABASE [BouvetBeertastingDb] SET  MULTI_USER 
GO

ALTER DATABASE [BouvetBeertastingDb] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BouvetBeertastingDb] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BouvetBeertastingDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BouvetBeertastingDb] SET TARGET_RECOVERY_TIME = 120 SECONDS 
GO

ALTER DATABASE [BouvetBeertastingDb] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [BouvetBeertastingDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [BouvetBeertastingDb] SET QUERY_STORE = ON
GO

ALTER DATABASE [BouvetBeertastingDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [BouvetBeertastingDb] SET  READ_WRITE 
GO


