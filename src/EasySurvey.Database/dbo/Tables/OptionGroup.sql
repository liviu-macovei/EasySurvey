CREATE TABLE [dbo].[OptionGroup] (
    [Id]         INT IDENTITY (1, 1)	NOT NULL,
    [Name]       NVARCHAR (1024)		NULL,
    [CreatedOn]  DATETIME				NULL,
    [CreatedBy]  NVARCHAR (1024)		NULL,
    [ModifiedOn] DATETIME				NULL,
    [ModifiedBy] NVARCHAR (1024)		NULL,
    CONSTRAINT [PK_OptionGroup] PRIMARY KEY CLUSTERED ([Id] ASC)
);

