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

SET IDENTITY_INSERT [dbo].[SurveyTemplate] ON

INSERT [dbo].[SurveyTemplate] ([Id], [OwnerId], [SurveyTypeId], [Title], [Description], [TaskDetails], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, 1, 1, N'Default Survey Templete', N'This is a test survey.', N'used for some task details...',  CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SurveyTemplate] OFF

SET IDENTITY_INSERT [dbo].[SectionGroup] ON

INSERT [dbo].[SectionGroup] ([Id], [Title], [IsMandatory], [SurveyTemplateId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, N'Bygninger', 0, 1, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SectionGroup] OFF

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, 1, N'Dækninger', N'Forsikringstager/Ejer ( skal udfyldes) ' + CHAR(13) + N'Forsikringssted: ( skal udfyldes) ' + CHAR(13) + N'Anvendelse: ( skal udfyldes) ' + CHAR(13) + N'Kvm: ( skal udfyldes)', 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (1, 1, 2, 1, N'Brand, lynnedslag m.v.', N'Blot X', N'Help text...', null, null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (2, 1, 2, 1, N'Restværdi 50%', N'Blot X', N'Help text...', null, null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (3, 1, 2, 1, N'Anden bygningsskade/kasko incl hærværk ', N'Blot X', N'Help text...', null, null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (4, 1, 2, 1, N'Kortslutning/El-skade ', N'Blot X', N'Help text...', null, null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (5, 1, 2, 1, N'Svamp- og insekt ', N'Blot X', N'Help text...', null, null, 0, 50, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (6, 1, 2, 1, N'Skjulte rør ', N'Blot X', N'Help text...', null, null, 0, 60, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (7, 1, 2, 1, N'Stikledning ', N'Blot X', N'Help text...', null, null, 0, 70, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (8, 1, 2, 1, N'Husejeransvar ', N'Blot X', N'Help text...', null, null, 0, 80, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (9, 1, 2, 1, N'Huslejetab og periode ',  N'Ved forsikres åbnes følgende 2.' + CHAR(13) + N'Huslejetab for hele perioden:' + CHAR(13) + N'Periode: ', N'Help text...', null, null, 0, 90, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (10, 1, 2, 1, N'Glas ', N'Blot X', N'Help text...', null, null, 0, 100, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (11, 1, 2, 1, N'Sanitet', N'Blot X', N'Help text...', null, null, 0, 110, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (12, 1, 2, 1, N'Skilte', N'Blot X', N'Help text...', null, null, 0, 120, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (13, 1, 2, 1, N'Inventarglas', N'Blot X', N'Help text...', null, null, 0, 130, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (14, 1, 2, 1, N'Bygningsudsmykning', N'Forsikres' + CHAR(13) + N'Sum:', N'Help text...', null, null, 0, 140, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (15, 1, 2, 1, N'Haveanlæg', N'Forsikres' + CHAR(13) + N'Sum:', N'Help text...', null, null, 0, 150, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (16, 1, 2, 1, N'Oprydning', N'Forsikres' + CHAR(13) + N'Sum:', N'Help text...', null, null, 0, 160, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (17, 1, 2, 1, N'Jordskadedækning', N'Forsikres' + CHAR(13) + N'Sum:', N'Help text...', null, null, 0, 170, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (18, 1, 2, 1, N'Lovliggørelse', N'Forsikres' + CHAR(13) + N'Sum:', N'Help text...', null, null, 0, 180, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (19, 1, 2, 1, N'Tyveri af olie eller andre væsker', N'Forsikres' + CHAR(13) + N'Sum:', N'Help text...', null, null, 0, 190, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (20, 1, 2, 1, N'Særlige dækninger for beboelse', null, null, null, null, 0, 200, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (21, 1, 2, 1, N'Entrepriser uden farligt arbejde op til 500.000 kr.', N'Blot x', N'Help text...', null, null, 0, 210, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (22, 1, 2, 1, N'Udvidet vandskade', N'Blot x', N'Help text...', null, null, 0, 220, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (23, 1, 2, 1, N'Retshjælp', N'Forsikres' + CHAR(13) + N'Er der professionel administrator: Ja / nej', N'Help text...', null, null, 0, 230, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (24, 1, 2, 1, N'Bestyrelsesansvar', N'Forsikres' + CHAR(13) + N'Er der professionel administrator: Ja / nej', N'Help text...', null, null, 0, 240, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (25, 1, 2, 1, N'Løsøre', N'Forsikres' + CHAR(13) + N'Sum:', N'Help text...', null, null, 0, 250, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (26, 1, 2, 1, N'Genhusning', N'Forsikres' + CHAR(13) + N'Sum:' + CHAR(13) + N'Periode:', N'Help text...', null, null, 0, 260, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (27, 1, 2, 1, N'Ansvar for arbejdsmaskiner indenfor eget område', N'Forsikres' + CHAR(13) + N'Er der maskiner med over 20 HK:', N'Help text...', null, null, 0, 270, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (28, 1, 2, 1, N'Selvrisiko:', N'Intet X', N'Help text...', null, null, 0, 280, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF


SET IDENTITY_INSERT [dbo].[NextQuestion] ON

INSERT [dbo].[NextQuestion] ([Id], [BaseQuestionId], [OptionGroupId], [OptionId], [NextQuestionId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) 
				     VALUES (1, 20, 1, 1, 21, 1, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[NextQuestion] ([Id], [BaseQuestionId], [OptionGroupId], [OptionId], [NextQuestionId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) 
				     VALUES (2, 20, 1, 1, 22, 1, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[NextQuestion] ([Id], [BaseQuestionId], [OptionGroupId], [OptionId], [NextQuestionId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) 
				     VALUES (3, 20, 1, 1, 23, 1, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[NextQuestion] ([Id], [BaseQuestionId], [OptionGroupId], [OptionId], [NextQuestionId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) 
				     VALUES (4, 20, 1, 1, 24, 1, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[NextQuestion] ([Id], [BaseQuestionId], [OptionGroupId], [OptionId], [NextQuestionId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) 
				     VALUES (5, 20, 1, 1, 25, 1, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[NextQuestion] ([Id], [BaseQuestionId], [OptionGroupId], [OptionId], [NextQuestionId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) 
				     VALUES (6, 20, 1, 1, 26, 1, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[NextQuestion] ([Id], [BaseQuestionId], [OptionGroupId], [OptionId], [NextQuestionId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) 
				     VALUES (7, 20, 1, 1, 27, 1, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[NextQuestion] OFF


-------------------------------------- Adding Section 2 for Section Group 1----------------------------------------------------

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) 
				VALUES (2, 1, N'Risikospørgsmål', N'This section contains the information regarding the risk details.', 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF


SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (29, 2, 2, 2, N'Nyværdi', N'Blot X', N'Help text...', null, null, 0, 290, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (30, 2, 2, 2, N'1. risikoforsikring', N'Hvis Ja' + CHAR(13) + N'Sum:', N'Help text...', null, null, 0, 300, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (31, 2, 2, 2, N'Fredet/bevaringsværdig', N'Blot X', N'Help text...', null, null, 0, 310, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (32, 2, 2, 2, N'Hårdt tag', N'Blot X', N'Help text...', null, null, 0, 320, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (33, 2, 2, 2, N'Blødt tag', N'Blot X', N'Help text...', null, null, 0, 330, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (34, 2, 2, 2, N'Er bygningen momsregistreret', N'Hvis Ja' + CHAR(13) + N'Procent:', N'Help text...', null, null, 0, 340, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (35, 2, 2, 2, N'Brandfarlige væsker klasse 1 & 2 over 200 liter i bygning.', N'Blot X', N'Help text...', null, null, 0, 350, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (36, 2, 2, 2, N'Træ eller plastbearbejdningsmaskiner?', N'Hvis Ja' + CHAR(13) + N'Antal:', N'Help text...', null, null, 0, 360, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (37, 2, 2, 2, N'Er der brandalarmeringsanlæg/sprinkler', N'Blot X', N'Help text...', null, null, 0, 370, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (38, 2, 2, 2, N'Yderligt info', N'Blot X', N'Help text...', null, null, 0, 380, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (39, 2, 2, 2, N'Er der flere bygninger der skal forsikres', N'Hvis Ja, skal tilsvarende dokument fremkomme og gerne med kopi af de udfyldte dækninger.', N'Help text...', null, null, 0, 390, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF


SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) 
				VALUES (3, 1, N'Generelle spørgsmål', N'This section contains the general question mandatory to the group.', 5, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF


SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (40, 3, 1, null, N'Forsikringstager/Ejer ( skal udfyldes) ', N'Blot X', N'Help text...', null, null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (41, 3, 1, null, N'Forsikringssted: ( skal udfyldes)', N'Hvis Ja' + CHAR(13) + N'Sum:', N'Help text...', null, null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (42, 3, 1, null, N'Anvendelse: ( skal udfyldes)', N'Blot X', N'Help text...', null, null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (43, 3, 1, null, N'Kvm: ( skal udfyldes)', N'Blot X', N'Help text...', null, null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF



SET IDENTITY_INSERT [dbo].[SectionGroup] ON

INSERT [dbo].[SectionGroup] ([Id], [Title], [IsMandatory], [SurveyTemplateId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, N'Bygninger', 0, 1, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SectionGroup] OFF

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, 1, N'Dækninger', N'Forsikringstager/Ejer ( skal udfyldes) ' + CHAR(13) + N'Forsikringssted: ( skal udfyldes) ' + CHAR(13) + N'Anvendelse: ( skal udfyldes) ' + CHAR(13) + N'Kvm: ( skal udfyldes)', 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[SectionGroup] ON

INSERT [dbo].[SectionGroup] ([Id], [Title], [IsMandatory], [SurveyTemplateId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, N'Løsøre', 0, 1, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SectionGroup] OFF

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (4, 2, N'Dækninger', N'Dækninger Info Section', 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (5, 2, N'Risikooplysninger', N'Risikooplysninger info section', 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (6, 2, N'Selvrisiko', N'Selvrisiko info section', 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (44, 4, 2, 1, N'Skal andre selskaber medforsikres', null, N'Enter text value...', 'Forsikres. Selskaber: ', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (45, 4, 5, 1, N'Brand, tyveri, vandskade', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (46, 4, 5, 1, N'Kortslutning', null, N'Help text...', 'Forsikres. Sum: ', null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (47, 4, 5, 1, N'All-risk incl hærværk', null, N'Help text...', 'Forsikres. Sum: ', null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (48, 4, 5, 1, N'Genfremstilling af originale modeller, tegninger, kartoteker og forretningsbøger', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 50, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (49, 4, 4, 1, N'Glas', N'Sum 1 risiko: <br/> Bygningsareal nyværdi: ', N'Enter mentioned detials in text area...', 'Forsikres. ', null, 0, 60, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (50, 4, 5, 1, N'Sanitet', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 70, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (51, 4, 5, 1, N'Skilte', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 80, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (52, 4, 4, 1, N'Penge og repræsentativer <br/> -	Max 5.000 udenfor pengeskab <br/> -	Opfyld altid selskabets sikringskrav.', 'Ønskes dækning udover standard i pengeskab: ja/nej <br/> Hvis ja. <br/> Sum:       <br/>Sikringsklasse:', N'Enter details mentioned below...', 'Forsikres: ', null, 0, 90, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (53, 4, 5, 1, N'Ran & røveri', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 100, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (54, 4, 5, 1, N'Omstilling af låse', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 110, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (55, 4, 5, 1, N'Købe- og dybfrost dækning', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 120, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (56, 4, 4, 1, N'Løsøre i Container/skurvogn på forsikringsstedet',null, N'Enter mentioned detials in text area...', 'Forsikres. ', null, 0, 130, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (57, 4, 4, 1, N'Løsøre (aflåst) uden for forsikringsstedet','Dækningsområde: Danmark, Norden, Europa, Verden <br/> I bygning sum:   <br/>I container/skurvogn/arbejdspladser sum:   <br/>', N'Enter mentioned detials in text area...', 'Forsikres. ', null, 0, 140, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (58, 4, 5, 1, N'Dækning for selve container/skurvogn', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 150, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (59, 4, 5, 1, N'Stormskade på udvendigt produktionsudstyr', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 160, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (60, 4, 5, 1, N'Brand under åben himmel på forsikringsstedet', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 170, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (61, 4, 5, 1, N'Tyveri under åben himmel på forsikringsstedet', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 180, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (62, 4, 5, 1, N'Stormskade på stilladser udenfor forsikringsstedet', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 190, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (63, 4, 5, 1, N'Tyveri af stilladser udenfor forsikringsstedet', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 200, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (64, 4, 5, 1, N'Tyveri af væsker fra aflåst tanke på forsikringsstedet', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 210, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (65, 4, 5, 1, N'Oprydningsudgifter', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 220, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (66, 4, 5, 1, N'Jordskade', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 230, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (67, 4, 6, 1, N'Ting tilhørende 3. mand', null, null, null, null, 0, 240, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF

SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (68, 5, 6, 2, N'Hårdt tag', null, null, null, null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (69, 5, 6, 2, N'Blødt tag', null, null, null, null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (70, 5, 6, 2, N'Varer i kælder (selskabets gulvhøjde skal altid opfyldes) ', null, null, null, null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (71, 5, 5, 2, N'Sikringsniveau varer/ særligt løsøre', null, 'Select one of the mentioned options...', 'Intet X vælges 10, 20 30 40 50', null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (72, 5, 6, 2, N'Er der brandalarmeringsanlæg/sprinkler', null, null, null, null, 0, 50, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (73, 5, 6, 2, N'Brandfarlige væsker klasse 1 & 2 over 200 liter i bygning.', null, null, null, null, 0, 60, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (74, 5, 5, 2, N'Træ eller plastbearbejdningsmaskiner?', 'Antal', 'Enter number...', 'Hvis Ja', null, 0, 70, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF


SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (75, 6, 1, null, N'Selvrisiko', null, null, null, null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF


SET IDENTITY_INSERT [dbo].[SectionGroup] ON

INSERT [dbo].[SectionGroup] ([Id], [Title], [IsMandatory], [SurveyTemplateId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (3, N'IT  Kasko', 0, 1, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SectionGroup] OFF

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (7, 3, N'Dækninger', N'Dækninger Info Section', 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (8, 3, N'Risikooplysninger', N'Risikooplysninger info section', 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (9, 3, N'Selvrisiko', N'Selvrisiko info section', 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (76, 7, 4, 1, N'Skal andre selskaber medforsikres', null, N'(her må der gerne kopires fra løsøre, med mulighed for at rette)', 'Forsikres. Selskaber: ', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (77, 7, 4, 1, N'Virksomhedens samlede stationære IT udstyr.', N'Sum på forsikringsstederne, Sum udenfor forsikringsstederne, Dækningsområde', N'Enter sum amount...', 'Forsikres.', null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (78, 7, 4, 1, N'Bærbart it udstyr', N'Sum på forsikringsstederne, Sum udenfor forsikringsstederne, Dækningsområde', N'Help text...', 'Forsikres.', null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (79, 7, 4, 1, N'Meromkostning (Husk Backup)', N'Sum: Dækningsperiode mdr: Karens periode dage:', N'Enter all amounts in text...', 'Forsikres.', null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (80, 7, 4, 1, N'Databærer (Husk Backup)', N'Sum: Dækningsperiode mdr: Karens periode dage:', N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 50, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (81, 7, 4, 1, N'It Driftstab ( husk Backup)', N'Sum: Dækningsperiode mdr: Karens periode dage: ', N'Enter mentioned detials in text area...', 'Forsikres. ', null, 0, 60, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (82, 7, 4, 1, N'Ønskes Brand, vandt og tyveri', null, N'Enter information here...', 'Forsikres.', null, 0, 70, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (83, 8, 4, 2, N'Er der risikooplysninger', null, null, 'Intet X.', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (84, 9, 1, null, N'Selvrisiko', null, null, null, null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF

