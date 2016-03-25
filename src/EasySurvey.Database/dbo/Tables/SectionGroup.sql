CREATE TABLE [dbo].[SectionGroup] (
    [Id]                   INT IDENTITY (1, 1)	NOT NULL,
    [Title]                NVARCHAR (50)		NOT NULL,
    [IsMandatory]          BIT					NOT NULL,
    [SurveyTemplateId]     INT					NOT NULL,
    [SortOrder]            INT					NOT NULL,
    [CreatedOn]            DATETIME				NULL,
    [CreatedBy]            NVARCHAR (100)		NULL,
    [ModifiedOn]           DATETIME				NULL,
    [ModifiedBy]           NVARCHAR (100)		NULL,
    CONSTRAINT [PK_SectionGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SectionGroup_SurveyTemplate] FOREIGN KEY ([SurveyTemplateId]) REFERENCES [dbo].[SurveyTemplate] ([Id])
);

