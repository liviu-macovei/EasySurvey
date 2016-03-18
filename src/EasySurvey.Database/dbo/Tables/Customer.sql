CREATE TABLE [dbo].[Customer] (
    [Id]                              UNIQUEIDENTIFIER NOT NULL,
    [Name]                            NVARCHAR (1024)  NOT NULL,
    [Address]                         NVARCHAR (1024)  NULL,
    [Telephone]                       NCHAR (10)       NULL,
    [HomePage]                        NVARCHAR (1024)  NULL,
    [Owner]                           NVARCHAR (1024)  NULL,
    [Subsidiaries]                    NVARCHAR (1024)  NULL,
    [CVR]                             NCHAR (10)       NULL,
    [Management]                      NVARCHAR (1024)  NULL,
    [Responsible]                     NVARCHAR (1024)  NULL,
    [Board]                           NVARCHAR (1024)  NULL,
    [IndustrialClassification]        NVARCHAR (1024)  NULL,
    [IsPBSPayment]                    BIT              NULL,
    [IndustrialAssociationMembership] NVARCHAR (1024)  NULL,
    [GroupSales]                      NVARCHAR (1024)  NULL,
    [EmployeeCount]                   NCHAR (10)       NULL,
    [CreatedOn]                       DATETIME         NULL,
    [CreatedBy]                       NVARCHAR (100)   NULL,
    [ModifiedOn]                      DATETIME         NULL,
    [ModifiedBy]                      NVARCHAR (100)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

