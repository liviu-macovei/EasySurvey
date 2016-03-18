CREATE TABLE [dbo].[Option] (
    [Id]            INT             NOT NULL,
    [OptionGroupId] INT             NOT NULL,
    [Name]          NVARCHAR (1024) NULL,
    [Description]   NVARCHAR (MAX)  NULL,
    [CreatedOn]     DATETIME        NULL,
    [CreatedBy]     NVARCHAR (100)  NULL,
    [ModifiedOn]    DATETIME        NULL,
    [ModifiedBy]    NVARCHAR (100)  NULL,
    CONSTRAINT [PK_Option] PRIMARY KEY CLUSTERED ([Id] ASC, [OptionGroupId] ASC),
    CONSTRAINT [FK_Option_OptionGroup] FOREIGN KEY ([OptionGroupId]) REFERENCES [dbo].[OptionGroup] ([Id])
);

