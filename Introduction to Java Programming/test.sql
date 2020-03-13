-- SQL commands in a file
create table Student(
	ssn char(9),
	firstName varchar(25),
	mi char(1),
	lastName varchar(25),
	birthDate date,
	street varchar(25),
	phone char(11),
	zipCode char(5),
	deptId char(4),
	primary key (ssn));
	
create table Enrollment(
	ssn char(9),
	courseId char(5),
	dataRegistered date,
	grade char(1),
	primary key (ssn, courseId),
	foreign key (ssn) references Student(ssn),
	foreign key (courseId) references Course(courseId));