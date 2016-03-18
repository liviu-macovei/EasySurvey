CREATE TABLE [dbo].[Answer] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [AnalysisId]    UNIQUEIDENTIFIER NOT NULL,
    [QuestionId]    INT              NOT NULL,
    [OptionGroupId] INT              NULL,
    [OptionId]      INT              NULL,
    [AnswerGroupId] UNIQUEIDENTIFIER NULL,
    [AnswerText]    NVARCHAR (MAX)   NULL,
    [IsValid]       BIT              NOT NULL,
    [IsFinal]       BIT              NULL,
    [InHighlighted] BIT              NOT NULL,
    [CreatedOn]     DATETIME         NULL,
    [CreatedBy]     NVARCHAR (100)   NULL,
    [ModifiedOn]    DATETIME         NULL,
    [ModifiedBy]    NVARCHAR (100)   NULL,
    CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Answer_Analysis] FOREIGN KEY ([AnalysisId]) REFERENCES [dbo].[Survey] ([Id]),
    CONSTRAINT [FK_Answer_Option] FOREIGN KEY ([OptionId], [OptionGroupId]) REFERENCES [dbo].[Option] ([Id], [OptionGroupId]),
    CONSTRAINT [FK_Answer_Question] FOREIGN KEY ([QuestionId]) REFERENCES [dbo].[Question] ([Id])
);

