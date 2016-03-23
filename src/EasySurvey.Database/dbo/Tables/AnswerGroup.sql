CREATE TABLE [dbo].[AnswerGroup] (
    [Id]             INT NOT NULL,
    [SurveyId]		 INT NULL,
    [SectionGroupId] INT NULL,
    [IsUsed]         BIT              NULL,
    [CreatedOn]      DATETIME         NULL,
    [CreatedBy]      NVARCHAR (100)   NULL,
    [ModifiedOn]     DATETIME         NULL,
    [ModifiedBy]     NVARCHAR (100)   NULL,
    CONSTRAINT [PK_AnswerGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AnswerGroup_Survey] FOREIGN KEY ([SurveyId]) REFERENCES [dbo].[Survey] ([Id]),
    CONSTRAINT [FK_AnswerGroup_SectionGroup] FOREIGN KEY ([SectionGroupId]) REFERENCES [dbo].[SectionGroup] ([Id])
);

