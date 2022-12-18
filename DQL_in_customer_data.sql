-- WE USE iota_w3s DATABASE FOR DQL

Use iota_w3s;

show tables;
describe customer;

select * from customer;

select customeID ,customeName from customer;

select distinct city from customer;

select distinct city, country from customer;

-- WHERE IS USE FOR CONDITION
select customeID , customeName , country from customer
where country = "Germany";

-- not equal
select customeID , customeName , country from customer
where country != "brazil";  

-- more than equal to 

select * from Products;

select ProductID , ProductName , Price from Products
where Price >= 60 ; 

-- Between 
select ProductID , ProductName , Price from Products
where Price between 20 and 40 ;

-- Or
select customeID , customeName , country from customer
where country = "germany" or country='uk';  

-- Or
select customeID , customeName , city from customer
where city = "berlin" or city='london';

-- Not 
select customeID , customeName , city from customer
where  Not city = "berlin" or city='london';

 
Use date


select firstname , lastname birthdate
from employees
where birthdate between '1956-01-01'
and '1960-12-31';


-- Between and where
select * from Products;
select ProductID , ProductName , Price , supplierID from Products
where supplierID=5 and Price between 20 and 40 ; 

-- like 
-- Here "_" use only one character and "%" this Wildcard use for multiple character

select customeName  , city 
from customer
where city like "b%" ;

-- Orderby (sort the values)

select customeName  , city 
from customer
order by city ;

-- orderby descending

select customeName  , city 
from customer
order by city desc ;

-- orderby ascending
select customeName  , city 
from customer
order by city asc ; 



select customeID , customeName , city,country  from customer
order by city desc, country ;


-- Having Clause

select count(customeid),city
from customer
group by city 
having count(customeid) >= 3;


-- Question

select count(customeid) as 'total customers',country 
from customer
where city in ('london' , 'madrin')
group by country 
having count(customeid) >=2;




-- case functions

select orderid, Quantity,
(case 
when quantity > 30 then "High Demand"
when quantity > 15 then "Normal Demand"
else "low demand"
end) as 'product demand'
from orderdetails ;

-- Questions 

select * from products;


select roductname,Price
(case 
when Price >20 Then "Expensive"
when Price >10 then "resonable"
else "discounted"
end) as 'price categorie'
from products
order by
(case when price is null then productid
else price
end) desc;
