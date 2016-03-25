﻿/*
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

:r .\01.PostDeployment.SurveyTypes.sql	
:r .\02.PostDeployment.SurveyStates.sql
:r .\03.PostDeployment.DefaultOwner.sql
:r .\04.PostDeployment.QuestionTypes.sql
:r .\05.PostDeployment.OptionGroups.sql
:r .\06.PostDeployment.SurveyTemplate.sql

