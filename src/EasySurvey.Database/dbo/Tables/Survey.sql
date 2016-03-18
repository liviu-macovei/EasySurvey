CREATE TABLE [dbo].[Survey] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [SurveyTemplateId]     UNIQUEIDENTIFIER NOT NULL,
    [CustomerId]           UNIQUEIDENTIFIER NOT NULL,
    [UserId]               NVARCHAR (450)   NOT NULL,
    [SurveyStateId]        INT              NOT NULL,
    [CreatedOn]            DATETIME         NULL,
    [CreatedBy]            NVARCHAR (100)   NULL,
    [ModifiedOn]           DATETIME         NULL,
    [ModifiedBy]           NVARCHAR (100)   NULL,
    CONSTRAINT [PK_Survey] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Survey_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]),
    CONSTRAINT [FK_Survey_SurveyState] FOREIGN KEY ([SurveyStateId]) REFERENCES [dbo].[SurveyState] ([Id]),
    CONSTRAINT [FK_Survey_SurveyTemplate] FOREIGN KEY ([SurveyTemplateId]) REFERENCES [dbo].[SurveyTemplate] ([Id])
);

