USE [MMU_Admissions]
GO

SELECT TOP (15) [Surname]
	  ,[Title]
      ,[Gender]
      ,[PrevSurname]
      ,[Firstname]
      ,[DoB]
      ,[CorrAddress]
      ,[Postcode]
      ,[Email]
      ,[Mobile]
      ,[BirthCountry]
      ,[PStatement]
  FROM [dbo].[ProStudent]
  ORDER BY Surname ASC, Firstname DESC

GO

select Firstname, Surname, Dob
from MMU_Admissions..ProStudent
where Gender = 1

select * 
from MMU_Admissions..ProStudent
where BirthCountry = 'United KIngdom'

select * 
from MMU_Admissions..ProStudent
where BirthCountry <> 'United KIngdom'

select Distinct BirthCountry 
from MMU_Admissions..ProStudent