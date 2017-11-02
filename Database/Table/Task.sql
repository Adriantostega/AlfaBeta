CREATE TABLE [dbo].[Task]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Name] NVARCHAR(100) NOT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [CreatedDatetime] DATETIME DEFAULT GETDATE() NOT NULL, 
    [Fk_User_Id] INT NOT NULL, 
    [Fk_Project_Id] INT NOT NULL, 
    CONSTRAINT [Fk_Task_User_Id] FOREIGN KEY ([Fk_User_Id]) REFERENCES [User]([Id]),
	CONSTRAINT [Fk_Task_Project_Id] FOREIGN KEY ([Fk_Project_Id]) REFERENCES [Project]([Id])
)
