CREATE TABLE [dbo].[QuestionType] (
    [Id]         INT IDENTITY (1, 1)	NOT NULL,
    [Name]       VARCHAR (1024)			NOT NULL,
    [CreatedOn]  DATETIME				NULL,
    [CreatedBy]  NVARCHAR (1024)		NULL,
    [ModifiedOn] DATETIME				NULL,
    [ModifiedBy] NVARCHAR (1024)		NULL,
    CONSTRAINT [PK_QuestionType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

