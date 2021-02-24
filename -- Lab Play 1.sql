-- Lab Play
use AdventureWorks
-- Do null filtering in the select predicate 
-- If you are doing a join later then define the join's column now. 
select FirstName, Isnull(MiddleName, '') as MiddleName, LastName, Isnull(Suffix, '') as Suffix, EmailAddress
from Person.Person
-- Start join statement
join Person.EmailAddress
-- Create relation.  Which col between the two tables are going to relate them?
on EmailAddress.BusinessEntityID = Person.BusinessEntityID
-- Person Type must be 'in'
where PersonType = 'in'
-- Last name must begin with a
and LastName like 'a%'
-- Sort the rows:
order by FirstName