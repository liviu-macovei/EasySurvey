CREATE TABLE [dbo].[Comment] (
    [Id]			INT IDENTITY (1, 1)	NOT NULL,
    [SurveyId]		INT					NOT NULL,
    [Description]	NVARCHAR (MAX)		NULL,
    [UserId]		NVARCHAR (450)		NOT NULL,
    [CreatedOn]		DATETIME			NULL,
    [CreatedBy]		NVARCHAR (1024)		NULL,
    [ModifiedOn]	DATETIME			NULL,
    [ModifiedBy]	NVARCHAR (1024)		NULL,
    CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Comment_Survey] FOREIGN KEY ([SurveyId]) REFERENCES [dbo].[Survey] ([Id])
);

