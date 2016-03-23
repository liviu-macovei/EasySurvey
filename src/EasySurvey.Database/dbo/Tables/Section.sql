CREATE TABLE [dbo].[Section] (
    [Id]             INT NOT NULL,
    [SectionGroupId] INT NOT NULL,
    [Title]          NVARCHAR (1024)  NULL,
    [Description]    NVARCHAR (MAX)   NULL,
    [SortOrder]      INT              NULL,
    [CreatedOn]      DATETIME         NULL,
    [CreatedBy]      NVARCHAR (100)   NULL,
    [ModifiedOn]     DATETIME         NULL,
    [ModifiedBy]     NVARCHAR (100)   NULL,
    CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Section_SectionGroup] FOREIGN KEY ([SectionGroupId]) REFERENCES [dbo].[SectionGroup] ([Id])
);

