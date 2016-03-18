CREATE TABLE [dbo].[SurveyType] (
    [Id]          INT             NOT NULL,
    [Name]        NVARCHAR (1024) NULL,
    [CreatedOn]   DATETIME        NULL,
    [CreatedBy]   NVARCHAR (100)  NULL,
    [ModifiedOn]  DATETIME        NULL,
    [ModifiedBy]  NVARCHAR (100)  NULL,
    CONSTRAINT [PK_SurveyType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

