CREATE TABLE [dbo].[Section] (
    [Id]             INT IDENTITY (1, 1)	NOT NULL,
    [SectionGroupId] INT					NOT NULL,
    [Title]          NVARCHAR (1024)		NOT NULL,
    [Description]    NVARCHAR (MAX)			NULL,
    [SortOrder]      INT					NOT NULL,
    [CreatedOn]      DATETIME				NULL,
    [CreatedBy]      NVARCHAR (1024)		NULL,
    [ModifiedOn]     DATETIME				NULL,
    [ModifiedBy]     NVARCHAR (1024)		NULL,
    CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Section_SectionGroup] FOREIGN KEY ([SectionGroupId]) REFERENCES [dbo].[SectionGroup] ([Id])
);

