﻿CREATE TABLE [dbo].[Answer] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [QuestionId]      INT             NOT NULL,
    [OptionGroupId]   INT             NULL,
    [OptionId]        INT             NULL,
    [AnswerText]      NVARCHAR (MAX)  NULL,
    [DefaultComments] NVARCHAR (MAX)  NULL,
    [IsValid]         BIT             NOT NULL,
    [IsFinal]         BIT             NOT NULL,
    [InHighlighted]   BIT             NOT NULL,
    [CreatedOn]       DATETIME        NULL,
    [CreatedBy]       NVARCHAR (1024) NULL,
    [ModifiedOn]      DATETIME        NULL,
    [ModifiedBy]      NVARCHAR (1024) NULL,
    [AnswerSectionId] INT             NULL,
    CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Answer_AnswerSection] FOREIGN KEY ([AnswerSectionId]) REFERENCES [dbo].[AnswerSection] ([Id]),
    CONSTRAINT [FK_Answer_Option] FOREIGN KEY ([OptionId], [OptionGroupId]) REFERENCES [dbo].[Option] ([Id], [OptionGroupId]),
    CONSTRAINT [FK_Answer_Question] FOREIGN KEY ([QuestionId]) REFERENCES [dbo].[Question] ([Id])
);





