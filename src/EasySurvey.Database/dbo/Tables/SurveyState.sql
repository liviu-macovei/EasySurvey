CREATE TABLE [dbo].[SurveyState] (
    [Id]          INT        NOT NULL,
    [Name] NVARCHAR(1024) NULL,
	[CreatedOn]    DATETIME         NULL,
    [CreatedBy]    NVARCHAR (100)   NULL,
    [ModifiedOn]   DATETIME         NULL,
    [ModifiedBy]   NVARCHAR (100)   NULL,
    CONSTRAINT [PK_SurveyState] PRIMARY KEY CLUSTERED ([Id] ASC)
);

