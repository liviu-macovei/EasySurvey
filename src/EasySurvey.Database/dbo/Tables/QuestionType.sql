CREATE TABLE [dbo].[QuestionType] (
    [Id]         INT            NOT NULL,
    [Name]       VARCHAR (50)   NOT NULL,
    [CreatedOn]  DATETIME       NULL,
    [CreatedBy]  NVARCHAR (100) NULL,
    [ModifiedOn] DATETIME       NULL,
    [ModifiedBy] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

