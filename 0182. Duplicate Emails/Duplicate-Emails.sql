# Write your MySQL query statement below
#subquery
/*select email
from (select email, count(email) as c
from Person
group by email) as temp
where c>1;*/

#Having solution
/*select email
from Person
group by email
having count(email)>1;
*/

#self join solution
select distinct p1.email
from Person p1 join person p2
on p1.email=p2.email and p1.id!=p2.id;
