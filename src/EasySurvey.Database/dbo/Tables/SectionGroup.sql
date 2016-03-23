CREATE TABLE [dbo].[SectionGroup] (
    [Id]                   INT              NOT NULL,
    [Title]                NVARCHAR (50)    NULL,
    [IsMandatory]          BIT              NULL,
    [SurveyTemplateId]     INT              NULL,
    [SortOrder]            INT              NOT NULL,
    [CreatedOn]            DATETIME         NULL,
    [CreatedBy]            NVARCHAR (100)   NULL,
    [ModifiedOn]           DATETIME         NULL,
    [ModifiedBy]           NVARCHAR (100)   NULL,
    CONSTRAINT [PK_SectionGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SectionGroup_SurveyTemplate] FOREIGN KEY ([SurveyTemplateId]) REFERENCES [dbo].[SurveyTemplate] ([Id])
);

