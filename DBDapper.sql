create proc EmployeeAddOrEdit
@EmployeeId int,
@Name nvarchar(50),
@Position nvarchar(50),
@Age int,
@Salary int

as
	if @EmployeeID = 0
		insert into Employee(Name, Position, Age, Salary)
		values (@Name, @Position, @Age, @Salary)
	else
		update Employee
		set
		Name = @Name, 
		Position = @Position, 
		Age = @Age, 
		Salary = @Salary
		where
		EmployeeID = @EmployeeID




create proc EmployeeViewAll
as 
	select *
	from Employee

create proc EmployeeViewByID
@EmployeeID int
as
	select *
	from Employee
	where EmployeeID = @EmployeeID

create proc EmployeeDeleteByID
@EmployeeID int
as
	delete from Employee
	where EmployeeID = @EmployeeID