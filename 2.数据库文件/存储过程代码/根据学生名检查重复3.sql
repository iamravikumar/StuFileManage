USE [StuFileManagement]
GO
/****** Object:  StoredProcedure [dbo].[ExistStuBySno]    Script Date: 07/07/2018 22:36:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[ExistStuBySno]  
@stuName varchar(50),  
@result int = 0 output  -- 输出参数
as  
begin  
     if (select COUNT(1) from StuInfo s where s.name=@stuName)>0  
		set
			@result = 1  
     else  
		set
			@result = 0
end  
go
