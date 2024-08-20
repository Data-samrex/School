-- Q1: Display all columns for all students who are 25 or older. 
SELECT *, DATEDIFF(YY, DoB, GETDATE()) as [Age]
from MMU_Admissions..ProStudent
where DATEDIFF(YY, DoB, GETDATE()) >= 25

-- Q2: Display all columns for female students between 18 (inclusive) and 30 (inclusive) years old
SELECT *, DATEDIFF(YY, DoB, GETDATE()) as [Age]
from MMU_Admissions..ProStudent
where DATEDIFF(YY, DoB, GETDATE()) between 18 and 30 and Gender = 1;

--Q3 Display first name, last name, address and postcode for all students who live in Manchester
select Firstname, Surname, CorrAddress, Postcode
from MMU_Admissions..ProStudent
where Postcode Like'M%';

--Q4:	Display the full names (last name + first name) of students whose first names are ‘Fara’, ‘Axe’, ‘Neal’ or ‘Cookie’. E.g. the full name should display Vanner Fara
select concat(Surname,' ', Firstname) as [Fullname]
from MMU_Admissions..ProStudent
where Firstname in('Fara', 'Axe', 'Neal','Cookie');

--Q5:	Display all columns for all students who have a previous surname.
select * 
from MMU_Admissions..ProStudent
where PrevSurname is not Null;

--Q6: Display first name, last name and phone number of students who have their numbers end with ‘07’
select Firstname, Surname, Mobile
from MMU_Admissions..ProStudent
where Mobile Like '%07';

--Q7: 
select Firstname, Surname, CorrAddress, DATEDIFF(YY, Dob, GETDATE()) as [Age]
from MMU_Admissions..ProStudent
where Postcode is not NULL
Order by DATEDIFF(YY, Dob, GETDATE()) ASC, Surname DESC, Firstname ASC;