USE [ndemo];
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--
-- Table [dbo].[Stock]
--
IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
			WHERE TABLE_CATALOG='ndemo' AND TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'Stock'))
BEGIN
	DROP TABLE [dbo].[Stock]
END
GO

IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
			WHERE TABLE_CATALOG='ndemo' AND TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'StockDetail'))
BEGIN
	DROP TABLE [dbo].[StockDetail]
END
GO

BEGIN
	CREATE TABLE [dbo].[Stock](
		[StockId] 	INT IDENTITY(1,1) NOT NULL,
		[StockNo] 	NVARCHAR(20) NOT NULL,
		[StockName] 		NVARCHAR(250) NULL,
		[StockDesc] 		NVARCHAR(250) NULL,
		[Link] 		NVARCHAR(250) DEFAULT NULL,
		[Active] 	INT DEFAULT 1,
		
		[Author] 	NVARCHAR(50) DEFAULT NULL,
		[Created] 	[datetime] DEFAULT CURRENT_TIMESTAMP,
		[Editor] 	NVARCHAR(50) DEFAULT NULL,
		[Updated] 	[datetime] DEFAULT CURRENT_TIMESTAMP,		
		[Deleted] 	INT DEFAULT 0
	CONSTRAINT [PK_StockId] PRIMARY KEY CLUSTERED 
	(
		[StockId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('HPG', N'Thép Hoà Phát', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('FPT', N'CTCP FPT', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

