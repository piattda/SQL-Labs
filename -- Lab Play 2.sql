-- Lab Play 2
use AdventureWorks
select Product.ProductID, Name, ProductNumber, ListPrice
from Production.Product
left join sales.SalesOrderDetail
on Product.ProductID = SalesOrderDetail.ProductID
where ListPrice > 0
and SalesOrderDetail.ProductID is null
order by ListPrice desc