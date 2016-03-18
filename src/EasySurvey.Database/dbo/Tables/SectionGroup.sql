CREATE TABLE [dbo].[SectionGroup] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [Title]                NVARCHAR (50)    NULL,
    [IsMandatory]          BIT              NULL,
    [AnalysisDefinitionId] UNIQUEIDENTIFIER NULL,
    [SortOrder]            INT              NOT NULL,
    [CreatedOn]            DATETIME         NULL,
    [CreatedBy]            NVARCHAR (100)   NULL,
    [ModifiedOn]           DATETIME         NULL,
    [ModifiedBy]           NVARCHAR (100)   NULL,
    CONSTRAINT [PK_SectionGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SectionGroup_AnalysisDefinition] FOREIGN KEY ([AnalysisDefinitionId]) REFERENCES [dbo].[SurveyTemplate] ([Id])
);

