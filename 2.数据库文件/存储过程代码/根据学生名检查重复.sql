
create proc ExistStuByName  
@stuName varchar(50),  
@result varchar(8) output --�������  
as  
begin  
     if (select COUNT(1) from StuInfo s where s.name=@stuName)>0  
     set   
        @result='����!'  
     else  
     set   
        @result='������!'  
end  
go 