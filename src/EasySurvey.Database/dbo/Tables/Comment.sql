CREATE TABLE [dbo].[Comment] (
    [Id]         UNIQUEIDENTIFIER NOT NULL,
    [AnalysisId] UNIQUEIDENTIFIER NULL,
    [Comment]    NVARCHAR (MAX)   NULL,
    [UserId]     UNIQUEIDENTIFIER NULL,
    [CreatedOn]  DATETIME         NULL,
    [CreatedBy]  NVARCHAR (100)   NULL,
    [ModifiedOn] DATETIME         NULL,
    [ModifiedBy] NVARCHAR (100)   NULL,
    CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Comment_Analysis] FOREIGN KEY ([AnalysisId]) REFERENCES [dbo].[Survey] ([Id])
);

