CREATE TABLE [dbo].[AnswerGroup] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [AnalysisId]     UNIQUEIDENTIFIER NULL,
    [SectionGroupId] UNIQUEIDENTIFIER NULL,
    [IsUsed]         BIT              NULL,
    [CreatedOn]      DATETIME         NULL,
    [CreatedBy]      NVARCHAR (100)   NULL,
    [ModifiedOn]     DATETIME         NULL,
    [ModifiedBy]     NVARCHAR (100)   NULL,
    CONSTRAINT [PK_AnswerGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AnswerGroup_Analysis] FOREIGN KEY ([AnalysisId]) REFERENCES [dbo].[Survey] ([Id]),
    CONSTRAINT [FK_AnswerGroup_SectionGroup] FOREIGN KEY ([SectionGroupId]) REFERENCES [dbo].[SectionGroup] ([Id])
);

