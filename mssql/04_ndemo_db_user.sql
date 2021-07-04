USE [ndemo];
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--
-- Table structure for table [dbo].[User]
--
IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
			WHERE TABLE_CATALOG='ndemo' AND TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'User'))
BEGIN
	DROP TABLE [dbo].[User]
END
GO

BEGIN
	CREATE TABLE [dbo].[User](
		[UserId] [int] IDENTITY(1,1) NOT NULL,
		[UserKey] [nvarchar](50) NOT NULL,	
		[UserType] [nvarchar](20) DEFAULT NULL,
		[UserName] [nvarchar](50) DEFAULT NULL,
		[Hash] [nvarchar](50) DEFAULT NULL,	
		[DisplayName] [nvarchar](50) DEFAULT NULL,
		[ImageKey] [nvarchar](250) DEFAULT NULL,
		[Email] [nvarchar](50) DEFAULT NULL,
		[Mobile] [nvarchar](50) DEFAULT NULL,	
		[Title] [nvarchar](50) DEFAULT NULL,
		[Description] [nvarchar](250) DEFAULT NULL,
		[DateOfBirth] [datetime] DEFAULT NULL,	
		[Created] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Updated] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Author] [nvarchar](50) DEFAULT NULL,
		[Editor] [nvarchar](50) DEFAULT NULL,
		[Deleted] [int] DEFAULT 0
	CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
	(
		[UserId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

-- Sample data
INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'user01',NEWID(),'Test User 01','user01@demo.com','1990-03-03','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'user02',NEWID(),'Test User 02','user02@demo.com','1990-04-04','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'user03', NEWID(),'Test User 03','user03@demo.com','1984-12-24','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'ADMIN','user04',  NEWID(),'Test User 04','user04@demo.com','2000-12-26','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'user05',   NEWID(),'Test User 05','user05@demo.com','1984-12-22','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'user06', NEWID(),'Test User 05','user06@demo.com','1984-12-24','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'user07',  NEWID(),'Test User 06','user07@demo.com','1985-06-06','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'user08', NEWID(),'Test User 07','user08@demo.com','1984-12-24','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'user09', NEWID(),'Test User 08','user09@demo.com','1982-08-08','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'user10',  NEWID(),'Test User 09','user10@demo.com','1985-06-06','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'ADMIN', 'admin',  NEWID(),'Test Admmin Acct','admin@demo.com','1987-07-07','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'ADMIN', 'admin02',  NEWID(),'Test Admmin 02','admin02@demo.com','1987-07-07','SYSTEM','SYSTEM');


--
-- Table structure for table [dbo].[Group]
--
IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
			WHERE TABLE_CATALOG='ndemo' AND TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'Group'))
BEGIN
	DROP TABLE [dbo].[Group]
END
GO

BEGIN
	CREATE TABLE [dbo].[Group](
		[GroupId] [int] IDENTITY(1,1) NOT NULL,
		[GroupKey] [nvarchar](50) DEFAULT NULL,	
		[GroupName] [nvarchar](50) DEFAULT NULL,
		[Description] [nvarchar](250) DEFAULT NULL,	
		[Created] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Updated] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Author] [nvarchar](50) DEFAULT NULL,
		[Editor] [nvarchar](50) DEFAULT NULL,
		[Deleted] [int] DEFAULT 0
	CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
	(
		[GroupId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

-- Sample data
INSERT INTO [dbo].[Group] (GroupKey, GroupName, Description, Author, Editor) 
VALUES (NEWID(),'Administrators', 'Administrators Group','SYSTEM','SYSTEM');

INSERT INTO [dbo].[Group] (GroupKey, GroupName, Description, Author, Editor) 
VALUES (NEWID(),'Sale', 'Sales Team','SYSTEM','SYSTEM');

INSERT INTO [dbo].[Group] (GroupKey, GroupName, Description, Author, Editor) 
VALUES (NEWID(),'Finance','Finance Team','SYSTEM','SYSTEM');

INSERT INTO [dbo].[Group] (GroupKey, GroupName, Description, Author, Editor) 
VALUES (NEWID(),'Human Resource', 'HR Team','SYSTEM','SYSTEM');

INSERT INTO [dbo].[Group] (GroupKey, GroupName, Description, Author, Editor) 
VALUES (NEWID(),'Logictic', 'Logictic Team','SYSTEM','SYSTEM');


--
-- Table [dbo].[GroupUser]
--
IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
			WHERE TABLE_CATALOG='ndemo' AND TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'GroupUser'))
BEGIN
	DROP TABLE [dbo].[GroupUser]
END
GO

IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
			WHERE TABLE_CATALOG='ndemo' AND TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'UserGroup'))
BEGIN
	DROP TABLE [dbo].[UserGroup]
END
GO

BEGIN
	CREATE TABLE [dbo].[GroupUser](
		[GroupUserId] [int] IDENTITY(1,1) NOT NULL,
		[GroupId] [int] NOT NULL,
		[UserId] [int] NOT NULL,
		[ModuleId] [int] NOT NULL,
		[IsCreate] [int] DEFAULT 0,
		[IsUpdate] [int] DEFAULT 0,
		[IsDelete] [int] DEFAULT 0,
		[IsDisplay] [int] DEFAULT 1,
		[Created] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Updated] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Author] [nvarchar](50) NULL,
		[Editor] [nvarchar](50) NULL
	CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
	(
		[GroupUserId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

-- Sample data: GroupId = ModuleId
INSERT INTO [dbo].[GroupUser] (GroupId, UserId, ModuleId, Author, Editor) VALUES (1,1,0,'SYSTEM','SYSTEM');
INSERT INTO [dbo].[GroupUser] (GroupId, UserId, ModuleId, Author, Editor) VALUES (1,2,0,'SYSTEM','SYSTEM');
INSERT INTO [dbo].[GroupUser] (GroupId, UserId, ModuleId, Author, Editor) VALUES (1,3,0,'SYSTEM','SYSTEM');
INSERT INTO [dbo].[GroupUser] (GroupId, UserId, ModuleId, Author, Editor) VALUES (1,4,0,'SYSTEM','SYSTEM');
INSERT INTO [dbo].[GroupUser] (GroupId, UserId, ModuleId, Author, Editor) VALUES (1,5,0,'SYSTEM','SYSTEM');
INSERT INTO [dbo].[GroupUser] (GroupId, UserId, ModuleId, Author, Editor) VALUES (2,1,0,'SYSTEM','SYSTEM');
INSERT INTO [dbo].[GroupUser] (GroupId, UserId, ModuleId, Author, Editor) VALUES (2,2,0,'SYSTEM','SYSTEM');
INSERT INTO [dbo].[GroupUser] (GroupId, UserId, ModuleId, Author, Editor) VALUES (2,3,0,'SYSTEM','SYSTEM');
INSERT INTO [dbo].[GroupUser] (GroupId, UserId, ModuleId, Author, Editor) VALUES (2,4,0,'SYSTEM','SYSTEM');
INSERT INTO [dbo].[GroupUser] (GroupId, UserId, ModuleId, Author, Editor) VALUES (2,5,0,'SYSTEM','SYSTEM');
