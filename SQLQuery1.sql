----UC1----
Create database payroll_service;
use payroll_service; 

----UC2-----
create table employee_payroll(
 Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
Name varchar(200) NOT Null,
Salary float NOT NULL ,
StartDate Date NOT NULL,
);
-----UC3------
insert into employee_payroll VALUES('Yamini',50000,'12-05-2021')
insert into employee_payroll VALUES('Mahi',40000,'12-jan-2010');
insert into employee_payroll VALUES('Jhanu',15000,'20-mar-2018');
insert into employee_payroll VALUES('Gayi',10000,'15-FEB-2010');
insert into employee_payroll VALUES('Pavani',5,'13-apr-2025');
------------UC4-Retrieving all the Tables value--------------
select * from employee_payroll;
----------UC5----------
select *from employee_payroll where Name='Sachin';
update employee_payroll set StartDate='2021-03-03' where Id=1;
select * from employee_payroll where StartDate=cast('2021-12-05'as date);
select * from employee_payroll where StartDate between cast('2017-1-3' as date) and cast(getdate() as date);

----------------UC6---------
------Adding  employee_payroll table using ALTER keyword-------

Alter table employee_payroll add Gender char(1);
update employee_payroll set salary=20000 where Id=4;
select *from employee_payroll;

-----------UC7----------------------
-----------------Finding SUM,AVG,MIN,MAX,COUNT-----------------
select Gender,Sum(Salary)as SumOfSalary, Avg(Salary)as AverageSalary,MIN(Salary)as MinimumSalary,
MAX(Salary) as MaximumSalary,Count(Salary)as NumberOfMaleEmployee
from employee_payroll where Gender='M'group by Gender;

---------------------UC8--------------------
-----Extending employee_payroll table-----------

Alter table employee_payroll add Phone bigInt;
Alter table employee_payroll add Department varchar(150)not null default 'HR';
Alter table employee_payroll add Address varchar(150) default 'Banglore';
exec sp_rename'employee_payroll.Salary','Basic-Pay','COLOUMN'
select * from employee_payroll;

-----------------UC9----------------
------Extending employee_payroll table-------

Alter table employee_payroll add Basic_Pay varchar(10), Deduction FLOAT(20), Taxable_Pay FLOAT(20), Income_Tax Float(20), Net_Pay float(20);
select * from employee_payroll;

----------UC10-----------------
UPDATE employee_payroll SET phone='9874637670',Emp_DEPT=DEFAULT;
UPDATE employee_payroll SET Phone='9874888670',Emp_DEPT=' Hacker', Address = 'Hyderabad', Basic_Pay=12000,Deduction=5000,Taxable_Pay=2300,Income_Tax = 2564,Net_Pay=18000 WHERE Name='Yamini';
UPDATE employee_payroll SET Phone_Number='9874117670',Emp_DEPT='Head',   Address = 'chennai', Basic_Pay=12000,Deduction=5000,Taxable_Pay=2300,Income_Tax = 2564,Net_Pay=10000 WHERE Name='Mahi';
UPDATE employee_payroll SET Phone_Number='9874227670',Emp_DEPT='Developer', Emp_Address = 'pune', Basic_Pay=22000,Deduction=16000,Taxable_Pay=5300,Income_Tax = 5564,Net_Pay=22000 WHERE Name='Jhanu';
UPDATE employee_payroll SET Phone_Number='9874887670',Emp_DEPT='Developer', Emp_Address = 'Mumbai', Basic_Pay=13000,Deduction=5450,Taxable_Pay=2500,Income_Tax = 2564,Net_Pay=10000 WHERE Name='Gayi';
UPDATE employee_payroll SET Phone_Number='9874887670',Emp_DEPT='Marketing', Emp_Address = 'Bengaluru', Basic_Pay=14000,Deduction=5660,Taxable_Pay=2700,Income_Tax = 3564,Net_Pay=11000 WHERE Name='Pavani';
UPDATE employee_payroll SET Phone_Number='9833678738',Emp_DEPT='Purchasing', Emp_Address = DEFAULT, Basic_Pay=16000,Deduction=5660,Taxable_Pay=2800,Income_Tax = 5564,Net_Pay=14000 WHERE Name='Darun';
UPDATE employee_payroll SET Phone_Number='9833678538',Emp_DEPT='Resource', Emp_Address = 'Bengaluru', Basic_Pay=18000,Deduction=5440,Taxable_Pay=4400,Income_Tax = 4764,Net_Pay=16000 WHERE Name='vinitha';

----------------------------------
INSERT INTO employee_payroll VALUES('Terissa','48548','20-jan-2020','F','8758989','Nainital','Sales','54767',4875,4555,54767,376734);
select * from employee_payroll where Name='Terissa';


