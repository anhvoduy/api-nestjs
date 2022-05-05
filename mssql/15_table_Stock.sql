USE [ndemo];
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- cp VN30
-- https://www.hsx.vn/Modules/Listed/Web/StockIndexView/1964531007

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
		[StockId] 		INT IDENTITY(1,1) NOT NULL,
		[StockNo] 		NVARCHAR(20) NOT NULL,
		[StockName] 	NVARCHAR(250) NULL,
		[StockDesc] 	NVARCHAR(250) NULL,
		[Link] 			NVARCHAR(250) DEFAULT NULL,
		[Active] 		INT DEFAULT 1,
		
		[Author] 		NVARCHAR(50) DEFAULT NULL,
		[Created] 		[datetime] DEFAULT CURRENT_TIMESTAMP,
		[Editor] 		NVARCHAR(50) DEFAULT NULL,
		[Updated] 		[datetime] DEFAULT CURRENT_TIMESTAMP
	CONSTRAINT [PK_StockId] PRIMARY KEY CLUSTERED 
	(
		[StockId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('ACB', N'Ngân hàng Thương mại Cổ phần Á Châu', '', 'https://finance.vietstock.vn/ACB-ngan-hang-tmcp-a-chau.htm', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('BID', N'Ngân hàng Thương mại Cổ phần Đầu tư và Phát triển Việt Nam', '', 'https://finance.vietstock.vn/BID-ngan-hang-tmcp-dau-tu-va-phat-trien-viet-nam.htm', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('BVH', N'Tập đoàn Bảo Việt', '', 'https://finance.vietstock.vn/BVH-tap-doan-bao-viet.htm', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('CTG', N'Ngân hàng Thương mại Cổ phần Công Thương Việt Nam', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('FPT', N'Công ty Cổ phần FPT', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('GAS', N'Tổng Công ty Khí Việt Nam - Công ty Cổ phần', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('GVR', N'Tập đoàn Công nghiệp Cao su Việt Nam - Công ty Cổ phần', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('HDB', N'Ngân hàng TMCP Phát triển Thành phố Hồ Chí Minh', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('HPG', N'Công ty Cổ phần Tập đoàn Hòa Phát', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('KDH', N'Công ty Cổ phần Đầu tư và Kinh doanh Nhà Khang Điền', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('MBB', N'Ngân hàng Thương mại Cổ phần Quân Đội', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('MSN', N'Công ty Cổ phần Tập đoàn MaSan', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('MWG', N'Công ty Cổ phần Đầu tư Thế Giới Di Động', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('NVL', N'Công ty Cổ phần Tập đoàn Đầu tư Địa ốc No Va', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('PDR', N'Công ty Cổ phần Phát triển Bất động sản Phát Đạt', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('PLX', N'Tập đoàn Xăng dầu Việt Nam', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('PNJ', N'Công ty Cổ phần Vàng bạc Đá quý Phú Nhuận', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('POW', N'Tổng Công ty Điện lực Dầu khí Việt Nam - CTCP', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('SAB', N'Tổng Công ty Cổ phần Bia – Rượu – Nước giải khát Sài Gòn', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('SSI', N'Công ty Cổ phần Chứng khoán SSI', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('STB', N'Ngân hàng Thương mại Cổ phần Sài Gòn Thương Tín', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('TCB', N'Ngân hàng TMCP Kỹ Thương Việt Nam', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('TPB', N'Ngân hàng Thương mại Cổ phần Tiên Phong', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('VCB', N'Ngân hàng TMCP Ngoại Thương Việt Nam', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('VHM', N'Công ty Cổ phần Vinhomes', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('VIC', N'Tập đoàn Vingroup - Công ty Cổ phần', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('VJC', N'Công ty Cổ phần Hàng không VietJet', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('VNM', N'Công ty Cổ phần Sữa Việt Nam', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('VPB', N'Ngân hàng TMCP Việt Nam Thịnh Vượng', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');

INSERT INTO [dbo].[Stock] (StockNo, StockName, StockDesc, Link, Active,  Created, Author, Updated, Editor)
VALUES ('VRE', N'Công ty Cổ phần Vincom Retail', '', '', 1, GETDATE(), 'SYSTEM', GETDATE(), 'SYSTEM');
