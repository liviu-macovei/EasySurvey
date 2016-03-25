CREATE TABLE [dbo].[Owner] (
    [Id]            INT IDENTITY (1, 1)	NOT NULL,
    [Name]          NVARCHAR (1024)		NULL,
    [TemplateLimit] INT					NOT NULL,
    [AddressLine1]  NVARCHAR (1024)		NULL,
    [AddressLine2]  NVARCHAR (1024)		NULL,
    [AddressLine3]  NVARCHAR (1024)		NULL,
    [City]          NVARCHAR (50)		NULL,
    [PostalCode]    NVARCHAR (50)		NULL,
    [Country]       NVARCHAR (50)		NULL,
    [CreatedOn]     DATETIME			NULL,
    [CreatedBy]     NVARCHAR (1024)		NULL,
    [ModifiedOn]    DATETIME			NULL,
    [ModifiedBy]    NVARCHAR (1024)		NULL,
    CONSTRAINT [PK_Owner] PRIMARY KEY CLUSTERED ([Id] ASC)
);

