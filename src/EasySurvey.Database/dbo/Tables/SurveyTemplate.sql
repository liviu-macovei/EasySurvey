CREATE TABLE [dbo].[SurveyTemplate] (
    [Id]           INT IDENTITY (1, 1)	NOT NULL,
    [OwnerId]      INT					NOT NULL,
    [SurveyTypeId] INT					NOT NULL,
    [Title]        NVARCHAR (1024)		NOT NULL,
    [Description]  NVARCHAR (MAX)		NULL,
    [TaskDetails]  NVARCHAR (MAX)		NULL,
    [CreatedOn]    DATETIME				NULL,
    [CreatedBy]    NVARCHAR (1024)		NULL,
    [ModifiedOn]   DATETIME				NULL,
    [ModifiedBy]   NVARCHAR (1024)		NULL,
    CONSTRAINT [PK_SurveyTemplate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SurveyTemplate_Owner] FOREIGN KEY ([OwnerId]) REFERENCES [dbo].[Owner] ([Id]),
    CONSTRAINT [FK_SurveyTemplate_SurveyType] FOREIGN KEY ([SurveyTypeId]) REFERENCES [dbo].[SurveyType] ([Id])
);

