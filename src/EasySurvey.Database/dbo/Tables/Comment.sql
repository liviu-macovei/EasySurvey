CREATE TABLE [dbo].[Comment] (
    [Id]			INT NOT NULL,
    [SurveyId]		INT NOT NULL,
    [Description]	NVARCHAR (MAX)   NULL,
    [UserId]		NVARCHAR (450)   NOT NULL,
    [CreatedOn]		DATETIME         NULL,
    [CreatedBy]		NVARCHAR (100)   NULL,
    [ModifiedOn]	DATETIME         NULL,
    [ModifiedBy]	NVARCHAR (100)   NULL,
    CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Comment_Survey] FOREIGN KEY ([SurveyId]) REFERENCES [dbo].[Survey] ([Id])
);

