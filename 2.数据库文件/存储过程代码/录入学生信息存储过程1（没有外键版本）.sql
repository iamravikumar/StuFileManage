USE [StuFileManagement]
GO
/****** Object:  StoredProcedure [dbo].[insertStu]    Script Date: 07/07/2018 20:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[insertStu]
@stuNo varchar(50),
@stuName varchar(50),
@stuSex varchar(2),
@stuNation varchar(50),
@stuBirthDate datetime,
@stuBirthPlace varchar(50),
@stuAdmissionTime datetime
as 
	begin 
		insert into StuInfo
			(sno,name,sex,nation,birthDate,birthPlace,admissionTime)
		values
			(@stuNo,@stuName,@stuSex,@stuNation,@stuBirthDate,@stuBirthPlace,@stuAdmissionTime)
	end
