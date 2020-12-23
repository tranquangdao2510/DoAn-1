﻿-- nghiệp vụ
go
create proc proc_getAllBusiness as select *from tbl_Business
go
create proc proc_getIdBusiness @id int as select *from tbl_Business where id=@id
go
create proc proc_insertBusiness
@name nvarchar(200),
@status_Busines bit
as insert into tbl_Business(name,status_Busines) values(@name,@status_Busines)
go
create proc proc_UpdateBusiness
@name nvarchar(200),
@status_Busines bit,
@id int
as update tbl_Business set name=@name,status_Busines=@status_Busines where id=@id
go
create proc proc_DeleteBusiness @id int as delete tbl_Business where id=@id
go
--/ thêm dữ liệu vào bảng 
insert into tbl_Business (name,status_Busines) values (N'Tiếp tân',0)
insert into tbl_Business (name,status_Busines) values (N'Thu Ngân',0)
-- nhân viên
go
create proc proc_getAllEmployes as select *from tbl_Employees 
go
create proc proc_getByNameEmployes @name nvarchar(200) as select * from tbl_Employees where name like @name
go
create proc proc_insertEmployes 
@name nvarchar(200),
@phone nvarchar(200),
@email nvarchar(200),
@address nvarchar(200) ,
@gender bit ,
@id_Busines int ,
@status_Employes bit,
@created_date date
as insert into tbl_Employees(name,phone,email,address,gender,id_Busines,status_Employes,created_date) values(@name,@phone,@email,@address,@gender,@id_Busines,@status_Employes,@created_date)
go
create proc proc_updateEmployes
@id int,
@name nvarchar(200),
@phone nvarchar(200),
@email nvarchar(200),
@address nvarchar(200) ,
@gender bit ,
@id_Busines int ,
@status_Employes bit,
@created_date date
as update tbl_Employees set name=@name,phone=@phone,email=@email,address=@address,gender=@gender,id_Busines=@id_Busines,status_Employes=@status_Employes,created_date=@created_date
where id=@id
go
create proc proc_DeleteEmployes @id int as delete tbl_Employees where id=@id

-- Danh mục
go
create proc proc_getAllCategory
as
select * from tbl_Category
go
create proc proc_InsertCategory
@groupFood nvarchar(200),
@status_cat bit
as
Insert into tbl_Category(groupFood,status_cat)values(@groupFood,@status_cat)

go
create proc proc_UpdateCategory

@groupFood nvarchar(200),
@status_cat bit,
@id int
as update tbl_Category set groupFood=@groupFood,status_cat=@status_cat where id=@id

go
create proc proc_DeleteCategory
@id int
as 
Delete tbl_Category where id=@id


select*from tbl_Category
select * from tbl_Business