CREATE TABLE [dbo].[Survey] (
    [Id]                   INT IDENTITY (1, 1)	NOT NULL,
    [SurveyTemplateId]     INT					NOT NULL,
    [CustomerId]           INT					NOT NULL,
    [UserId]               NVARCHAR (450)		NOT NULL,
    [SurveyStateId]        INT					NOT NULL,
    [CreatedOn]            DATETIME				NULL,
    [CreatedBy]            NVARCHAR (1024)		NULL,
    [ModifiedOn]           DATETIME				NULL,
    [ModifiedBy]           NVARCHAR (1024)		NULL,
    CONSTRAINT [PK_Survey] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Survey_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]),
    CONSTRAINT [FK_Survey_SurveyState] FOREIGN KEY ([SurveyStateId]) REFERENCES [dbo].[SurveyState] ([Id]),
    CONSTRAINT [FK_Survey_SurveyTemplate] FOREIGN KEY ([SurveyTemplateId]) REFERENCES [dbo].[SurveyTemplate] ([Id])
);

