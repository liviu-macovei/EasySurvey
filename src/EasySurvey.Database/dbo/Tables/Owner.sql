CREATE TABLE [dbo].[Owner] (
    [Id]            INT NOT NULL,
    [Name]          NVARCHAR (1024)  NULL,
    [TemplateLimit] INT              NULL,
    [AddressLine1]  NVARCHAR (1024)  NULL,
    [AddressLine2]  NVARCHAR (1024)  NULL,
    [AddressLine3]  NVARCHAR (1024)  NULL,
    [City]          NVARCHAR (50)    NULL,
    [PostalCode]    NVARCHAR (50)    NULL,
    [Country]       NVARCHAR (50)    NULL,
    [CreatedOn]     DATETIME         NULL,
    [CreatedBy]     NVARCHAR (100)   NULL,
    [ModifiedOn]    DATETIME         NULL,
    [ModifiedBy]    NVARCHAR (100)   NULL,
    CONSTRAINT [PK_Owner] PRIMARY KEY CLUSTERED ([Id] ASC)
);

