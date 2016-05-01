CREATE TABLE [dbo].[AnswerGroup] (
    [Id]             INT             IDENTITY (1, 1) NOT NULL,
    [SurveyId]       INT             NOT NULL,
    [SectionGroupId] INT             NOT NULL,
    [IsUsed]         BIT             NOT NULL,
    [CreatedOn]      DATETIME        NULL,
    [CreatedBy]      NVARCHAR (1024) NULL,
    [ModifiedOn]     DATETIME        NULL,
    [ModifiedBy]     NVARCHAR (1024) NULL,
    [AddressId]      INT             NULL,
    CONSTRAINT [PK_AnswerGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AnswerGroup_Address] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id]),
    CONSTRAINT [FK_AnswerGroup_SectionGroup] FOREIGN KEY ([SectionGroupId]) REFERENCES [dbo].[SectionGroup] ([Id]),
    CONSTRAINT [FK_AnswerGroup_Survey] FOREIGN KEY ([SurveyId]) REFERENCES [dbo].[Survey] ([Id])
);





