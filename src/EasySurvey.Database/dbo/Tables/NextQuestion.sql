CREATE TABLE [dbo].[NextQuestion] (
    [Id]             INT IDENTITY (1, 1)	NOT NULL,
    [BaseQuestionId] INT					NOT NULL,
    [OptionGroupId]  INT					NOT NULL,
    [OptionId]       INT					NOT NULL,
    [NextQuestionId] INT					NULL,
    [SortOrder]      INT					NULL,
    [CreatedOn]      DATETIME				NULL,
    [CreatedBy]      NVARCHAR (1024)		NULL,
    [ModifiedOn]     DATETIME				NULL,
    [ModifiedBy]     NVARCHAR (1024)		NULL,
    CONSTRAINT [PK_NextQuestion] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_NextQuestion_BaseQuestion] FOREIGN KEY ([BaseQuestionId]) REFERENCES [dbo].[Question] ([Id]),
    CONSTRAINT [FK_NextQuestion_NextQuestion] FOREIGN KEY ([NextQuestionId]) REFERENCES [dbo].[Question] ([Id])
);

