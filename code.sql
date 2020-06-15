drop database hotal;
create database hotal;
   use hotal;

CREATE TABLE `Employees` (
  `EmployeeID` int ,
  `FirsName` varchar(30) not null,
  `LastName` varchar(30) not null,
  `Department` varchar(30) not null,
  `slary` DECIMAL ,
  `Phone` varchar(30) not null,
    
PRIMARY Key (`EmployeeID`)

);
 describe `Employees`;

 insert into `Employees`(
`EmployeeID`,
`FirsName`,
`LastName`,
`Department`,
`slary`,
`Phone`) values
 (
30, 
'ahmed' ,
'saad' ,
'HR',
1000,
017556221

);

 insert into `Employees`(
`EmployeeID`,
`FirsName`,
`LastName`,
`Department`,
`slary`,
`Phone`) values
 (
44, 
'osama' ,
'saad' ,
'Mr',
2000,
01755630

);

  insert into `Employees`(
`EmployeeID`,
`FirsName`,
`LastName`,
`Department`,
`slary`,
`Phone`) values
 (
34, 
'waheed' ,
'saad' ,
'ob',
3000,
01755644

);

  insert into `Employees`(
`EmployeeID`,
`FirsName`,
`LastName`,
`Department`,
`slary`,
`Phone`) values
 (
94, 
'adhm' ,
'saad' ,
'se',
4000,
01755633

);

  insert into `Employees`(
`EmployeeID`,
`FirsName`,
`LastName`,
`Department`,
`slary`,
`Phone`) values
 (
84, 
'saad' ,
'saad' ,
'rh',
5000,
01755622

);

   insert into `Employees`(
`EmployeeID`,
`FirsName`,
`LastName`,
`Department`,
`slary`,
`Phone`) values
 (
66, 
'shawky' ,
'saad' ,
'mh',
6000,
017556123

);
 select * from `Employees`;

 CREATE TABLE `Guest` (
  `GuestID` int ,
  `FirstName` varchar(30) not null,
  `LastName` varchar(30) not null,
  `Email` varchar(30) not null,
 `PhoneNamber` varchar(30) not null,

  PRIMARY Key (`GuestID`)
);
describe  `Guest`;

insert into `Guest`(
`GuestID`,
`FirstName`,
`LastName`,
`Email`,
`PhoneNamber`) values
 (
90, 
'shady' ,
'vathy' ,
'shady.com',
20214520 
);

 insert into `Guest`(
`GuestID`,
`FirstName`,
`LastName`,
`Email`,
`PhoneNamber`) values
 (
98, 
'rady' ,
'altawel' ,
'rady.com',
20218746
);

 insert into `Guest`(
`GuestID`,
`FirstName`,
`LastName`,
`Email`,
`PhoneNamber`) values
 (
99, 
'ali' ,
'altawel' ,
'ali.alicom',
20218213
);


  insert into `Guest`(
`GuestID`,
`FirstName`,
`LastName`,
`Email`,
`PhoneNamber`) values
 (
59, 
'baher' ,
'altawel' ,
'baher.alicom',
20218245
);

   insert into `Guest`(
`GuestID`,
`FirstName`,
`LastName`,
`Email`,
`PhoneNamber`) values
 (
636, 
'shaker' ,
'altawel' ,
'shaker.alicom',
20218745
);

   insert into `Guest`(
`GuestID`,
`FirstName`,
`LastName`,
`Email`,
`PhoneNamber`) values
 (
239, 
'nal' ,
'altawel' ,
'nal.alicom',
202182788
);

 select * from  `Guest`;

CREATE TABLE `RoomType` (
  `RoomTypeID` int not null,
  `RoomFloor` varchar(30) not null,
  `Description` varchar(30),
PRIMARY Key (`RoomTypeID`)

);

describe `RoomType`;

CREATE TABLE `Reservation` (
  `GuestID` int not null,
  `RoomTypeID` int not null,
  `RoomID` int not null,
  `BookingDate` date not null,
  `DepartureDate`date not null,
  
CONSTRAINT FK_any_name FOREIGN Key (`GuestID`) REFERENCES Guest(`GuestID`),
CONSTRAINT FK_any_mme FOREIGN Key (`RoomTypeID`) REFERENCES RoomType(`RoomTypeID`)


);

describe `Reservation`;

