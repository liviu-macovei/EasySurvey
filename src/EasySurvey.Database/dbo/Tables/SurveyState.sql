CREATE TABLE [dbo].[SurveyState] (
    [Id]           INT IDENTITY (1, 1)	NOT NULL,
    [Name]         NVARCHAR(1024)		NOT NULL,
	[CreatedOn]    DATETIME				NULL,
    [CreatedBy]    NVARCHAR (1024)		NULL,
    [ModifiedOn]   DATETIME				NULL,
    [ModifiedBy]   NVARCHAR (1024)		NULL,
    CONSTRAINT [PK_SurveyState] PRIMARY KEY CLUSTERED ([Id] ASC)
);

