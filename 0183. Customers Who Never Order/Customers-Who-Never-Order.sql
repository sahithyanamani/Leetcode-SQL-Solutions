 Write your MySQL query statement below
/*select name as Customers
from Customers
where id not in (select CustomerId from Orders);
*/

select name as Customers
from Customers left join Orders
on Customers.Id = Orders.CustomerId
where Orders.Id is null; 
