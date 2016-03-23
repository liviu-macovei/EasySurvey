CREATE TABLE [dbo].[NextQuestion] (
    [Id]             INT			  NOT NULL,
    [BaseQuestionId] INT              NOT NULL,
    [OptionGroupId]  INT              NOT NULL,
    [OptionId]       INT              NOT NULL,
    [NextQuestionId] INT              NULL,
    [SortOrder]      INT              NULL,
    [CreatedOn]      DATETIME         NULL,
    [CreatedBy]      NVARCHAR (100)   NULL,
    [ModifiedOn]     DATETIME         NULL,
    [ModifiedBy]     NVARCHAR (100)   NULL,
    CONSTRAINT [PK_NextQuestion] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_NextQuestion_Question] FOREIGN KEY ([BaseQuestionId]) REFERENCES [dbo].[Question] ([Id]),
    CONSTRAINT [FK_NextQuestion_Question1] FOREIGN KEY ([NextQuestionId]) REFERENCES [dbo].[Question] ([Id])
);

