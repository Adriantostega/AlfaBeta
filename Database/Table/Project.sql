CREATE TABLE [dbo].[Project]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Name] NVARCHAR(100) NOT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [CreatedDatetime] DATETIME DEFAULT GETDATE() NOT NULL, 
    [Fk_User_Id] INT NOT NULL, 
    CONSTRAINT [Fk_Project_User_Id] FOREIGN KEY ([Fk_User_Id]) REFERENCES [User]([Id])
)
