CREATE TABLE [dbo].[Address] (
    [Id]           INT             IDENTITY (1, 1) NOT NULL,
    [Recipient]    NVARCHAR (1024) NULL,
    [CareOf]       NVARCHAR (1024) NULL,
    [AddressLine1] NVARCHAR (1024) NULL,
    [AddressLine2] NVARCHAR (1024) NULL,
    [AddressLine3] NVARCHAR (1024) NULL,
    [PostalCode]   NVARCHAR (1024) NULL,
    [City]         NVARCHAR (1024) NULL,
    [Country]      NVARCHAR (1024) NULL,
    [CreatedOn]    DATETIME        NULL,
    [CreatedBy]    NVARCHAR (1024) NULL,
    [ModifiedOn]   DATETIME        NULL,
    [ModifiedBy]   NVARCHAR (1024) NULL,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([Id] ASC)
);

