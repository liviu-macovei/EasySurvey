CREATE TABLE [dbo].[AnswerSection] (
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [SectionId]     INT             NOT NULL,
    [AnswerGroupId] INT             NOT NULL,
    [Order]         INT             NOT NULL,
    [CreatedOn]     DATETIME        NULL,
    [CreatedBy]     NVARCHAR (1024) NULL,
    [ModifiedOn]    DATETIME        NULL,
    [ModifiedBy]    NVARCHAR (1024) NULL,
    CONSTRAINT [PK_AnswerSection] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AnswerSection_AnswerGroup] FOREIGN KEY ([AnswerGroupId]) REFERENCES [dbo].[AnswerGroup] ([Id]),
    CONSTRAINT [FK_AnswerSection_Section] FOREIGN KEY ([SectionId]) REFERENCES [dbo].[Section] ([Id])
);

