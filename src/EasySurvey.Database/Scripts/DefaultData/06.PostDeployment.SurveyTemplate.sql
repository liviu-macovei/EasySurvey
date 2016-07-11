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

SET IDENTITY_INSERT [dbo].[Question] ON
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (85, 7, 7, null, N'It Driftstab - Sum', null, null, null, null, 0, 80, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
SET IDENTITY_INSERT [dbo].[Question] OFF


SET IDENTITY_INSERT [dbo].[NextQuestion] ON
INSERT [dbo].[NextQuestion] ([Id], [BaseQuestionId], [OptionGroupId], [OptionId], [NextQuestionId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) 
				     VALUES (8, 81, 1, 1, 85, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
SET IDENTITY_INSERT [dbo].[NextQuestion] OFF

SET IDENTITY_INSERT [dbo].[SectionGroup] ON

INSERT [dbo].[SectionGroup] ([Id], [Title], [IsMandatory], [SurveyTemplateId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (4, N'Maskinkasko & Antenneforsikring', 0, 1, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SectionGroup] OFF

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (10, 4, N'Dækninger', N'Dækninger Info Section', 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (11, 4, N'Risikooplysninger', N'Risikooplysninger info section', 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (12, 4, N'Selvrisiko', N'Selvrisiko info section', 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (86, 10, 4, 1, N'Skal andre selskaber medforsikres', null, N'(her må der gerne kopires fra løsøre, med mulighed for at rette)', 'Forsikres. Selskaber: ', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (87, 10, 4, 1, N'Skal samtlige virksomhedens maskiner excl teknisk udstyr forsikres', N'Sum på forsikringsstederne Ønskes dækning udenfor forsikringsstederne: Ja/Nej Ved ja: Sum: Geografisk dækningsområde:', N'Enter sum amount...', 'Forsikres.', null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (88, 10, 4, 1, N'Kun udvalgte maskiner forsikres', N'Sum på forsikringsstederne   Ønskes dækning udenfor forsikringsstederne: Ja/Nej    Ved ja:    Sum:    Geografisk dækningsområde:', N'Help text...', 'Forsikres.', null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (89, 10, 6, 1, N'Ønskes der også indre maskinskade', null, null, null, null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (90, 10, 4, 1, N'Meromkostning (husk Backup)', N'Sum: Dækningsperiode mdr: Karens periode dage:', N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 50, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (91, 10, 4, 1, N'Databærer (husk Backup)', N'Sum: Dækningsperiode mdr: Karens periode dage: ', N'Enter mentioned detials in text area...', 'Forsikres. ', null, 0, 60, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (92, 10, 4, 1, N'Maskindriftstab (Husk backup)', N'Sum: Dækningsperiode mdr: Karens periode dage: ', N'Enter mentioned detials in text area...', 'Forsikres. ', null, 0, 70, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (93, 10, 4, 1, N'Maskindriftstab - Lønomkostninger', N'Sum: Dækningsperiode mdr: Karens periode dage: ', N'Enter mentioned detials in text area...', 'Forsikres. ', null, 0, 80, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (94, 10, 6, 1, N'Ønskes Brand, vand og tyveri på maskinkasko', null, null, null, null, 0, 90, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (95, 10, 4, 1, N'Antenneforsikring', N'Højde:   Alder:   Anvendelse:   Nyværdi incl opsætning.', N'Enter mentioned detials in text area...', 'Forsikres. ', null, 0, 100, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (96, 11, 4, 2, N'Er der risikooplysninger', null, null, 'Intet X.', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (97, 12, 1, null, N'Selvrisiko', null, null, null, null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF

SET IDENTITY_INSERT [dbo].[SectionGroup] ON

INSERT [dbo].[SectionGroup] ([Id], [Title], [IsMandatory], [SurveyTemplateId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (5, N'Teknisk Udstyr', 0, 1, 50, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SectionGroup] OFF

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (13, 5, N'Dækninger', N'Dækninger Info Section', 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (14, 5, N'Risikooplysninger', N'Risikooplysninger info section', 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (15, 5, N'Selvrisiko', N'Selvrisiko info section', 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (98, 13, 4, 1, N'Skal andre selskaber medforsikres', null, N'(her må der gerne kopires fra løsøre, med mulighed for at rette)', 'Forsikres. Selskaber: ', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (99, 13, 4, 1, N'Skal alt teknisk udstyr forsikres', N'Sum på forsikringsstederne Ønskes dækning udenfor forsikringsstederne: Ja/Nej Ved ja: Sum: Geografisk dækningsområde:', N'Enter sum amount...', 'Forsikres.', null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (100, 13, 4, 1, N'Kun udvalgt udstyr forsikres', N'Sum på forsikringsstederne   Ønskes dækning udenfor forsikringsstederne: Ja/Nej    Ved ja:    Sum:    Geografisk dækningsområde:', N'Help text...', 'Forsikres.', null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (101, 13, 6, 1, N'Ønskes der også indre maskinskade', null, null, null, null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (102, 13, 4, 1, N'Meromkostning (husk Backup)', N'Sum: Dækningsperiode mdr: Karens periode dage:', N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 50, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (103, 13, 4, 1, N'Databærer (husk Backup)', N'Sum: Dækningsperiode mdr: Karens periode dage: ', N'Enter mentioned detials in text area...', 'Forsikres. ', null, 0, 60, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (104, 13, 4, 1, N'Maskindriftstab (Husk backup)', N'Sum: Dækningsperiode mdr: Karens periode dage: ', N'Enter mentioned detials in text area...', 'Forsikres. ', null, 0, 70, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (105, 13, 4, 1, N'Maskindriftstab - Lønomkostninger', N'Sum: Dækningsperiode mdr: Karens periode dage: ', N'Enter mentioned detials in text area...', 'Forsikres. ', null, 0, 80, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (106, 13, 4, 1, N'Ønskes Brand, vand og tyveri på teknisk udstyr', N'Forsikringssteder:   Sikringsniveauer:  ', N'Enter mentioned detials in text area...', 'Forsikres. ', null, 0, 80, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')


INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (107, 14, 4, 2, N'Er der risikooplysninger', null, null, 'Intet X.', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (108, 15, 1, null, N'Selvrisiko', null, null, null, null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
SET IDENTITY_INSERT [dbo].[Question] OFF


SET IDENTITY_INSERT [dbo].[SectionGroup] ON

INSERT [dbo].[SectionGroup] ([Id], [Title], [IsMandatory], [SurveyTemplateId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (6, N'Driftstabsforsikring', 0, 1, 60, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SectionGroup] OFF

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (16, 6, N'Dækninger', N'Dækninger Info Section', 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (17, 6, N'Risikooplysninger', N'Risikooplysninger info section', 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (18, 6, N'Selvrisiko', N'Selvrisiko info section', 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (109, 16, 4, 1, N'Skal andre selskaber medforsikres', null, null, 'Forsikres. Selskaber: ', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (110, 16, 6, 1, N'Brand, tyveri & vand', null, null, null, null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (111, 16, 6, 1, N'El-skade', null, null, null, null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (112, 16, 6, 1, N'All-risk', null, null, null, null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (113, 16, 4, 1, N'Dækningsperiode:', N'Mdr 6,12,18,24,36      Forskydningsret 6 måneder Ja/nej', N'Enter sum amount...', 'Forsikres.', null, 0, 50, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (114, 16, 5, 1, N'Driftstabsinteresse efter omsætning.', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 60, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (115, 16, 5, 1, N'Driftstab 1 risiko.', null, N'Enter sum amount...', 'Forsikres. Sum: ', null, 0, 70, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (116, 16, 5, 1, N'Meromkostninger:', null, N'Enter sum amount...', 'Forsikres. 1.risikosum:  ', null, 0, 80, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (117, 16, 4, 1, N'Lønomkostninger', N'Dækningsperiode. Mdr:     1.	risikosum produktive medarbejdere  2.	risikosum øvirge medarbejdere.', N'Enter sum amount...', 'Forsikres.', null, 0, 90, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (118, 16, 4, 1, N'Leverandør/ aftager driftstab', N'1 risikosum:   Periode mdr:   ', N'Enter details...', 'Forsikres.', null, 0, 100, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (119, 16, 4, 1, N'Veterinære myndigheders lukning af køkken', N'1.risikosum driftstab samt destruktion af varer:', N'Enter details...', 'Forsikres.', null, 0, 110, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (120, 16, 4, 1, N'Svigtende energiforsyning', N'1.risikosum driftstab:   Periode: ', N'Enter details...', 'Forsikres.', null, 0, 120, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (121, 16, 5, 1, N'Revisorhjælp til opgørelse af driftstab:', null, N'Enter sum amount...', 'Forsikres. Sum:  ', null, 0, 130, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (122, 16, 6, 1, N'Restværdidriftstab', null, null, null, null, 0, 140, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (123, 16, 6, 1, N'Lovliggørelsesdriftstab', null, null, null, null, 0, 150, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (124, 17, 4, 2, N'Er der risikooplysninger', null, null, 'Intet X.', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (125, 18, 1, null, N'Selvrisiko', null, null, null, null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
SET IDENTITY_INSERT [dbo].[Question] OFF

SET IDENTITY_INSERT [dbo].[SectionGroup] ON

INSERT [dbo].[SectionGroup] ([Id], [Title], [IsMandatory], [SurveyTemplateId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (7, N'Medarbejdere', 0, 1, 70, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SectionGroup] OFF

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (19, 7, N'Dækninger', N'Dækninger Info Section', 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (20, 7, N'Arbejdsmiljøbeskrivelse', N'Arbejdsmiljøbeskrivelse info section', 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (126, 19, 4, 1, N'Skal andre selskaber medforsikres', null, null, 'Forsikres. Selskaber: ', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (127, 19, 4, 1, N'Arbejdsskadeforsikring:', null, N'Enter Arbejdsskadeforsikring details...', N'', null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (128, 19, 4, 1, N'Frivillig Arbejdsskadeforsikring:', null, N'Enter Frivillig Arbejdsskadeforsikring details...', N'', null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (129, 20, 6, 2, N'Er der tegnet sundhed på medarbejderne', null, null, null, null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (130, 20, 4, 2, N'Øvrige informationer', N'Ved Ja:   Smiley hos arbejdstilsynet ', N'', N'Enter details...', null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF


SET IDENTITY_INSERT [dbo].[SectionGroup] ON

INSERT [dbo].[SectionGroup] ([Id], [Title], [IsMandatory], [SurveyTemplateId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (8, N'Syge Driftstab nøglepersoner', 0, 1, 80, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SectionGroup] OFF

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (21, 8, N'Dækninger', N'Dækninger Info Section', 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (22, 8, N'Risikooplysninger', N'Arbejdsmiljøbeskrivelse info section', 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (131, 21, 6, 1, N'Syge Driftstab nøglepersoner', null, null, null, null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (132, 21, 4, 1, N'-	Hvilke personer ønskes omfattet. ', null, null, 'Forsikres.', null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (133, 21, 4, 1, N'-	Forsikret omsætning', null, null, 'Forsikres.', null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (134, 21, 4, 1, N'-	Forsikret Sum ', null, null, 'Forsikres.', null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')


INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (135, 22, 4, 2, N'Udskriv helbredserklæring', N'udskrive et spørgeskema hvis ja', N'', N'Enter details...', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF

SET IDENTITY_INSERT [dbo].[SectionGroup] ON

INSERT [dbo].[SectionGroup] ([Id], [Title], [IsMandatory], [SurveyTemplateId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (9, N'Kollektiv Ulykke', 0, 1, 90, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SectionGroup] OFF

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (23, 9, N'Dækninger', N'Dækninger Info Section', 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (24, 9, N'Risikooplysninger', N'Arbejdsmiljøbeskrivelse info section', 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (136, 23, 4, 1, N'Skal andre selskaber medforsikres', null, null, 'Forsikres. Selskaber: ', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (137, 23, 4, 1, N'Samtlige ansatte i virksomheden', null, null, N' ', null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (138, 23, 5, 1, N'Kollektiv heltidsulykkesforsikring:', null, null, 'Forsikres: Dkk', null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (139, 23, 5, 1, N'Død', null, null, 'Sum', null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (140, 23, 5, 1, N'Invaliditet', null, null, 'Sum', null, 0, 50, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (141, 23, 6, 1, N'Tandskade', null, null, null, null, 0, 60, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (142, 24, 5, 1, N'Erhverv', null, null, 'Forsikres Antal: ', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (143, 24, 5, 1, N'Erhverv', null, null, 'Forsikres Antal: ', null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (144, 24, 5, 1, N'Erhverv', null, null, 'Forsikres Antal: ', null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (145, 24, 5, 1, N'Erhverv', null, null, 'Forsikres Antal: ', null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF




SET IDENTITY_INSERT [dbo].[SectionGroup] ON

INSERT [dbo].[SectionGroup] ([Id], [Title], [IsMandatory], [SurveyTemplateId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (11, N'Erhvervs og Produktansvar ', 0, 1, 110, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SectionGroup] OFF

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (27, 11, N'Dækninger', N'Dækninger Info Section', 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (28, 11, N'Risikospørgsmål', N'Arbejdsmiljøbeskrivelse info section', 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (29, 11, N'Selvrisiko', N'Arbejdsmiljøbeskrivelse info section', 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (151, 27, 4, 1, N'Skal andre selskaber medforsikres', null, null, 'Forsikres. Selskaber: ', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (152, 27, 4, 1, N'Erhvervsansvar', N'Geografisk område:    Forsikres. Sum:  ', null, 'Forsikres.', null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (153, 27, 5, 1, N'Behandling og bearbejdning under erhvervets udførelse', null, null, 'Forsikres. Sum: ', null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (154, 27, 5, 1, N'Ting i varetægt', null, null, 'Forsikres. Sum: ', null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (155, 27, 5, 1, N'Pludselig forurening (dækker 3 mand)', null, null, 'Forsikres. Sum: ', null, 0, 50, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (156, 27, 5, 1, N'Hus og Grundejeransvar', null, null, 'Forsikres. Sum: ', null, 0, 60, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (157, 27, 5, 1, N'Varmt arbejde ', null, null, 'Forsikres. Sum: ', null, 0, 70, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (158, 27, 4, 1, N'Gravearbejde', null, null, '', null, 0, 80, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (159, 27, 4, 1, N'Træfældning', null, null, '', null, 0, 90, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (160, 27, 4, 1, N'Benyttes kraner og lifte (skade på 3 mand)', null, null, 'Forsikres løftehøjde ', null, 0, 100, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (161, 27, 5, 1, N'Løftesansvar med kraner og lifte (skade på varen/genstanden)', null, null, 'Forsikres. Sum: ', null, 0, 110, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (162, 27, 4, 1, N'Droneransvar', null, null, 'Forsikres.', null, 0, 120, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (163, 27, 4, 1, N'Sølovs ansvar (objektivt ansvar)', N'Aktiviteter: ', null, 'Forsikres.', null, 0, 130, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (164, 27, 4, 1, N'Ansvar for hunde eller heste', null, null, 'Forsikres.', null, 0, 140, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (165, 27, 4, 1, N'Arrangøransvar.', null, null, 'Forsikres.', null, 0, 150, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (166, 27, 4, 1, N'Motoransvar på uindregistrerede køretøjer.', N'Hvis Ja:   Hvilke maskiner:   Indenfor eller udenfor eget område:   ', null, 'Forsikres.', null, 0, 160, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (167, 27, 4, 1, N'Produktansvar.', N'Geografisk område   Forsikres. Sum:    Forsikres: Kendt Reeksport  Ja/nej :    Forsikres Geografis område:   ', null, 'Forsikres.', null, 0, 170, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (168, 27, 5, 1, N'Ingrediens- og komponentskade', null, null, 'Forsikres. Sum: ', null, 0, 180, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (169, 27, 5, 1, N'Ingrediens- og komponenttab', null, null, 'Forsikres. Sum: ', null, 0, 190, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (170, 27, 5, 1, N'Behandling/bearbejdning efter erhvervets udførelse', null, null, 'Forsikres. Sum: ', null, 0, 200, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (171, 27, 5, 1, N'Fareafværgelse', null, null, 'Forsikres. Sum: ', null, 0, 210, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (172, 27, 5, 1, N'Indirekte tab', null, null, 'Forsikres. Sum: ', null, 0, 220, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (173, 27, 5, 1, N'Recall', null, null, 'Forsikres. Sum: ', null, 0, 230, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (174, 27, 6, 1, N'Hæftelsesansvar for underleverandører', null, null, null, null, 0, 240, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (175, 27, 5, 1, N'Miljøansvar', null, null, 'Forsikres. Sum: ', null, 0, 250, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (176, 27, 4, 1, N'Ubebyggede grunde.', null, null, '', null, 0, 260, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (177, 27, 4, 1, N'Lejer og naboansvar.', null, null, '', null, 0, 270, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (178, 27, 4, 1, N'Bygherreansvar.', null, null, '', null, 0, 280, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (179, 27, 4, 1, N'Nøgledækning.', null, null, '', null, 0, 290, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (180, 27, 4, 1, N'Retshjælpsforsikring.', N'Ønskes dækning udover standard Ja / nej', null, 'Forsikres.', null, 0, 300, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')



INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (181, 28, 4, 2, N'Benyttes salgs og leveringsbetingelser', null, null, '', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (182, 28, 6, 2, N'Importeres varer uden for EU', null, null, null, null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (183, 28, 4, 2, N'Udlejning/leasing', N'Hvis Ja. Omsætning: ', null, 'Forsikres.', null, 0, 30, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (184, 28, 4, 2, N'Benyttes jeres produkter eller arbejde ved driften af luftfartøj eller i ofshore installationer og som kan være årsag til havari eller fremkaldelse af farer herfor. Offshorevirksomhed, søfartsindustri, luftfartsindustri, medicinalindustri, motorkøretøj.', N'Hvis Ja: Beskrivelse af aktiviteter', null, 'Forsikres.', null, 0, 40, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (185, 28, 4, 2, N'Skal tidligere virksomheder eller tidligere forhandlede produkter medforsikres.', null, null, 'Forsikres.', null, 0, 50, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (186, 28, 8, 2, N'Retroaktiv dato:', null, null, 'Forsikres.', null, 0, 60, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (187, 29, 1, null, N'Selvrisiko', null, null, null, null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF

SET IDENTITY_INSERT [dbo].[SectionGroup] ON

INSERT [dbo].[SectionGroup] ([Id], [Title], [IsMandatory], [SurveyTemplateId], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (12, N'Professionelt ansvar / Rådgivningsansvar', 0, 1, 120, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[SectionGroup] OFF

SET IDENTITY_INSERT [dbo].[Section] ON

INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (30, 12, N'Dækninger', N'Dækninger Info Section', 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Section] ([Id], [SectionGroupId], [Title], [Description], [SortOrder], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (31, 12, N'Selvrisiko', null, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[Question] ON

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (188, 30, 4, 1, N'Skal andre selskaber medforsikres', null, null, 'Forsikres. Selskaber: ', null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')
INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (189, 30, 4, 1, N'Dækningssum pr år', N'Sum:  Udfyld separat skema: ', null, 'Forsikres. ', null, 0, 20, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

INSERT [dbo].[Question] ([Id],[SectionId], [QuestionTypeId], [OptionGroupId], [QuestionText], [DefaultComments], [HelpText], [AnswerLabel], [AnswerValidationExpression], [IsMandatory], [SortOrder],[CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy] ) 
				 VALUES (190, 31, 1, null, N'Selvrisiko', null, null, null, null, 0, 10, CAST(0x0000A36C009DF4CA AS DateTime), N'bah', CAST(0x0000A36C009DF4CA AS DateTime), N'bah')

SET IDENTITY_INSERT [dbo].[Question] OFF
