CREATE TABLE [dbo].[ProjectSubscription]
(
	[Fk_Project_Id] INT NOT NULL, 
    [Fk_User_Id] INT NOT NULL, 
    [SuscribedDateTime] DATETIME NOT NULL    
	CONSTRAINT [Fk_ProjectSubscription_Project_Id] FOREIGN KEY ([Fk_Project_Id]) REFERENCES [Project]([Id]),
	CONSTRAINT [Fk_ProjectSubscription_User_Id] FOREIGN KEY ([Fk_User_Id]) REFERENCES [User]([Id]), 
    CONSTRAINT [Pk_ProjectSubscription] PRIMARY KEY ([Fk_Project_Id], [Fk_User_Id])	
)
