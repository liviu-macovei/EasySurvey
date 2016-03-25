/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
SET IDENTITY_INSERT [dbo].[SurveyState] ON

INSERT [dbo].[SurveyState] ([Id], [Name], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, N'Created', CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[SurveyState] ([Id], [Name], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, N'Finalized', CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[SurveyState] ([Id], [Name], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (3, N'Closed', CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SurveyState] OFF
