CREATE TABLE [dbo].[Question] (
    [Id]                         INT IDENTITY (1, 1)	NOT NULL,
    [SectionId]                  INT					NOT NULL,
    [QuestionTypeId]             INT					NOT NULL,
    [OptionGroupId]              INT					NULL,
    [QuestionText]               NVARCHAR (MAX)			NULL,
    [DefaultComments]            NVARCHAR (MAX)			NULL,
    [HelpText]                   NVARCHAR (MAX)			NULL,
    [AnswerLabel]                NVARCHAR (MAX)			NULL,
    [AnswerValidationExpression] NVARCHAR (MAX)			NULL,
    [IsMandatory]                BIT					NOT NULL,
    [CreatedOn]                  DATETIME				NULL,
    [CreatedBy]                  NVARCHAR (1024)		NULL,
    [ModifiedOn]                 DATETIME				NULL,
    [ModifiedBy]                 NVARCHAR (1024)		NULL,
    CONSTRAINT [PK__Question] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Question_OptionGroup] FOREIGN KEY ([OptionGroupId]) REFERENCES [dbo].[OptionGroup] ([Id]),
    CONSTRAINT [FK_Question_QuestionType] FOREIGN KEY ([QuestionTypeId]) REFERENCES [dbo].[QuestionType] ([Id]),
    CONSTRAINT [FK_Question_Section] FOREIGN KEY ([SectionId]) REFERENCES [dbo].[Section] ([Id])
);

