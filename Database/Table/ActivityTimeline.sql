CREATE TABLE [dbo].[ActivityTimeline]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1,1), 
    [Fk_Task_Id] INT NOT NULL, 
    [Fk_User_Id] INT NOT NULL, 
    [StartDate] DATETIME NOT NULL, 
    [EndDate] DATETIME NULL,
	[CreatedDateTime] DATETIME NOT NULL,
	CONSTRAINT [Fk_ActivityTimeline_Task_Id] FOREIGN KEY ([Fk_Task_Id]) REFERENCES [Task]([Id]),
	CONSTRAINT [Fk_ActivityTimeline_User_Id] FOREIGN KEY ([Fk_User_Id]) REFERENCES [User]([Id])	
)
