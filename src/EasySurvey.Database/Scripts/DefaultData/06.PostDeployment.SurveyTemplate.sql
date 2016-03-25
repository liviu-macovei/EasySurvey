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
