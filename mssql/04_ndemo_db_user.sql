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
		[UserId] 		INT IDENTITY(1,1) NOT NULL,
		[UserKey] 		NVARCHAR(50) NOT NULL,	
		[UserType] 		NVARCHAR(20) DEFAULT NULL,
		[UserName] 		NVARCHAR(50) DEFAULT NULL,
		[Hash] 			NVARCHAR(50) DEFAULT NULL,
		[FirstName] 	NVARCHAR(50) DEFAULT NULL,
		[LastName] 		NVARCHAR(50) DEFAULT NULL,
		[DisplayName] 	NVARCHAR(100) DEFAULT NULL,
		[ImageKey] 		NVARCHAR(250) DEFAULT NULL,
		[Email] 		NVARCHAR(50) DEFAULT NULL,
		[CountryCode]	NVARCHAR(5) DEFAULT NULL,
		[PhoneNumber]	NVARCHAR(5) DEFAULT NULL,
		[Mobile] 		NVARCHAR(50) DEFAULT NULL,	
		[Title] 		NVARCHAR(50) DEFAULT NULL,
		[Description] 	NVARCHAR(250) DEFAULT NULL,
		[DateOfBirth] 	DATETIME DEFAULT NULL,	
		[Created] 		DATETIME DEFAULT CURRENT_TIMESTAMP,
		[Updated] 		DATETIME DEFAULT CURRENT_TIMESTAMP,
		[Author] 		NVARCHAR(50) DEFAULT NULL,
		[Editor] 		NVARCHAR(50) DEFAULT NULL,
		[Deleted] 		INT DEFAULT 0
	CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
	(
		[UserId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

-- Sample data
INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, FirstName, LastName, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'MEMBER', 'user01',NEWID(),'F1','Mike','Test User 01','user01@demo.com','1990-03-03','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, FirstName, LastName, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'MEMBER', 'user02',NEWID(),'F2','Mike','Test User 02','user02@demo.com','1990-04-04','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, FirstName, LastName, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'MEMBER', 'user03', NEWID(),'F3','Mike','Test User 03','user03@demo.com','1984-12-24','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, FirstName, LastName, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'MEMBER','user04',  NEWID(),'F3','Mike','Test User 04','user04@demo.com','2000-12-26','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, FirstName, LastName, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'MEMBER', 'user05',   NEWID(),'F4','Mike','Test User 05','user05@demo.com','1984-12-22','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, FirstName, LastName, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'MEMBER', 'user06', NEWID(),'F5','Mike','Test User 05','user06@demo.com','1984-12-24','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, FirstName, LastName, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'MEMBER', 'user07',  NEWID(),'F6','Mike','Test User 06','user07@demo.com','1985-06-06','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, FirstName, LastName, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'MEMBER', 'user08', NEWID(),'F7','Mike','Test User 07','user08@demo.com','1984-12-24','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, FirstName, LastName, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'MEMBER', 'user09', NEWID(),'F8','Mike','Test User 08','user09@demo.com','1982-08-08','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, FirstName, LastName, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'MEMBER', 'user10',  NEWID(),'F9','Mike','Test User 09','user10@demo.com','1985-06-06','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, FirstName, LastName, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'ADMIN', 'admin01',  NEWID(),'F10','Mike','Admmin 01','admin@demo.com','1987-07-07','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, FirstName, LastName, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'ADMIN', 'admin02',  NEWID(),'F11','Mike','Admmin 02','admin02@demo.com','1988-08-08','SYSTEM','SYSTEM');


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
		[GroupId] 		INT IDENTITY(1,1) NOT NULL,
		[GroupKey] 		NVARCHAR(50) DEFAULT NULL,
		[GroupName] 	NVARCHAR(50) DEFAULT NULL,
		[Description] 	NVARCHAR(250) DEFAULT NULL,
		[Created] 		DATETIME DEFAULT CURRENT_TIMESTAMP,
		[Updated] 		DATETIME DEFAULT CURRENT_TIMESTAMP,
		[Author] 		NVARCHAR(50) DEFAULT NULL,
		[Editor] 		NVARCHAR(50) DEFAULT NULL,
		[Deleted] 		INT DEFAULT 0
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
		[GroupUserId] 	INT IDENTITY(1,1) NOT NULL,
		[GroupId] 		INT NOT NULL,
		[UserId] 		INT NOT NULL,
		[ModuleId] 		INT NOT NULL,
		[IsCreate] 		INT DEFAULT 0,
		[IsUpdate] 		INT DEFAULT 0,
		[IsDelete] 		INT DEFAULT 0,
		[IsDisplay] 	INT DEFAULT 1,
		[Created] 		DATETIME DEFAULT CURRENT_TIMESTAMP,
		[Updated] 		DATETIME DEFAULT CURRENT_TIMESTAMP,
		[Author] 		NVARCHAR(50) NULL,
		[Editor] 		NVARCHAR(50) NULL
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
