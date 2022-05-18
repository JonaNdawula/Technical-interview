


   create table bankusers( userId int primary key NOT NULL , Username nvarchar(50)NOT NULL , password nvarchar(50) NOT NULL , Lastname nvarchar(50), firstname nvarchar(50),emailAddress nvarchar(50) NOT NULL,rolecode int NOT NULL ,institutioncode int NOT NULL,Branchcode int NOT NULL) --9
   insert into bankusers values(1001,'JoshKing','Joshking1989','King','Joshua','joshua.king@gmail.com',1,101,111 )
 --  create table InterSwitchusers( useridinterswitch int primary key NOT NULL , Username nvarchar(50) NOT NULL , password nvarchar(50) NOT NULL , Lastname nvarchar(50), firstname nvarchar(50),emailAddress nvarchar(50) NOT NULL , rolecode int NOT NULL ,institutioncode int NOT NULL )
   create table Coporate( userId int primary key NOT NULL , Username nvarchar(50), password nvarchar(50) NOT NULL , Lastname nvarchar(50), firstname nvarchar(50),emailAddress nvarchar(50)NOT NULL ,rolecode int NOT NULL ,institutioncode int NOT NULL ,CoporateType nvarchar(50) NOT NULL )
     
      insert into roles values()
  
   create table roles(Rolecode int primary key NOT NULL ,Rolename nvarchar(50) NOT NULL ,Roledescription nvarchar(50)NOT NULL )
  
   create table institution(Institutioncode int primary key NOT NULL ,institutionname nvarchar(50) NOT NULL )
   insert into institution values(101,'CIPLA Quality Chemicals')

   create table bank(Branchcode int PRIMARY KEY NOT NULL , Branchname nvarchar(50))
   insert into bank values(111,'Barclays Bank Bugoglobi Branch')
  
   --insert into  Employeeleaverequest values('Charles Walter',)
     
   Alter table Employeeleaverequest add constraint Employeeleaverequest_useridinterswitch_Fk FOREIGN KEY(useridinterswitch)
   references InterSwitchusers(useridinterswitch)

   select * from Coporate
    Alter table bankusers add constraint roles_Rolecode_Fk FOREIGN KEY(rolecode)
    references roles(Rolecode)
    Alter table bankusers add constraint bankusers_institutioncode_Fk FOREIGN KEY(institutioncode)
    references institution(Institutioncode)
    
    Alter table bankusers add constraint bankusers_Branchcode_Fk FOREIGN KEY(Branchcode)
   references bank(Branchcode)

   Alter table InterSwitchusers add constraint InterSwitchusers_rolecode_Fk FOREIGN KEY(rolecode)
   references roles(Rolecode)

  
   Alter table InterSwitchusers add constraint InterSwitchusers_institutioncode_Fk FOREIGN KEY(institutioncode)
   references institution(Institutioncode )

    Alter table Coporate add constraint Coporate_rolecode_Fk FOREIGN KEY(rolecode)
   references  roles(Rolecode)

   Alter table Coporate add constraint Coporate_institutioncode_Fk FOREIGN KEY(institutioncode)
   references  institution(Institutioncode )


  

   select * from bankusers
  select * from bank
   select * from Coporate
     select * from roles
  select * from institution
   select * from InterSwitchusers

   select * from bankusers where  Username ='JoshKing' and password ='Joshking1989' and institutioncode = 101
   update  roles set  Roledescription = 'Company head' where Rolecode =2
   create table Coporate( userId int primary key NOT NULL , Username nvarchar(50), password nvarchar(50) NOT NULL , Lastname nvarchar(50), firstname nvarchar(50),emailAddress nvarchar(50)NOT NULL ,rolecode int NOT NULL ,institutioncode int NOT NULL ,CoporateType nvarchar(50) NOT NULL )
    
	insert into Coporate values(1010,'MariaMain','MariaMain1989','Sanga','Maria','Mariah@gmail.com',2,102,'Chief Administrative officer' )
	 insert into institution values(102,'Magellan International')
     insert into roles values(2, 'Chief Administrative officer','CEO of Maria.Co')

	 CREATE TABLE [dbo].[InterSwitchusers](
	[useridinterswitch] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NULL,
	[firstname] [nvarchar](50) NULL,
	[emailAddress] [nvarchar](50) NOT NULL,
	[rolecode] [int] NOT NULL,
	[institutioncode] [int] NOT NULL,)


	insert into InterSwitchusers values(1111,'JonnyBravo ','jonnyBravo1989','Bravo','Johnny','JonnyBravo@yahoo.com',3,103)
	insert into institution values(103,'Interswitch')
    insert into roles values(3, 'Chief Executive Officer','Head of Interswitch')

	create table  EmployeeRegister(Employeeid int primary key Identity, firstname nvarchar(70)
	  ,surname nvarchar(50),HomeAddreess nvarchar(50), Telephone nvarchar(50), Gender nvarchar(50),
	  DateofBirth nvarchar(50),EmailAddress nvarchar(50),city nvarchar(50), country nvarchar(50)
	)
	insert into  EmployeeRegister values('James','Carver','245 Kampala','0772333180','Male','2000-18-5','james.Carver@gmail.com','Kampala','Uganda')

	create table leave(leaveid int primary key Identity(100,1) ,Employeename nvarchar(50), leavestartdate nvarchar(50) not null, leaveEnddate nvarchar(50) not null,Employeeid int)

	  Alter table leave add constraint leave_Employeeid_Fk FOREIGN KEY(Employeeid )
   references  EmployeeRegister(Employeeid)
   select * from EmployeeRegister

   select * from leave

   drop table  EmployeeRegister
    drop table leave

	Alter table leave Drop constraint leave_Employeeid_Fk 
	select * from leave

	