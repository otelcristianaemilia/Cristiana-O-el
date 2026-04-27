select * from customers
select PRODUCTCODE, PRODUCTNAME FROM PRODUCTS
select * from employees where lastname='King'
select * from employees where employeenumber>1216
select * from employees where employeenumber=1286
select * from employees
select * from customers
select * from employees where officecode=1
select lastname, firstname, email from employees where jobtitle='Sales Rep' 
select * from employees where officecode>=4
select * from employees where officecode!=6
select * from employees where officecode=1 or officecode=2
select * from employees where officecode=2 and jobtitle='Sales Rep'
select * from customers where creditlimit > 10000 and creditlimit < 90000
select * from customers where creditlimit between 10000 and 90000
select * from customers where contry IN ("USA", "FRANCE", "GERMANY", "SPAIN")
select * from employees where officecode=5 and employeenumber>=1500
select * from employees where officecode=5 and jobtitle="Sales Rep"
select * from customers where creditlimit>=30000 and contry!="SUA"
select * from customers where contry not IN("France", "USA", "Germany")
select officecode from employees 
select distinct officecode from employees
select * from products
select distinct jobtitle from employees
select distinct contry from costumers
select employeeNumber as "Employee Code", firstname,lastname,officecode as "User name" from employees
select contry from customers order by  

RECAPITULARE
1.Selectati toti clientii care au un z in nume 
select * from customers where customerName like '%Z%'

2.selectati primul si ultimul prenume al clientului din lista de clienti
select MIN(contactFirstName),MAX(contactFirstName) from customers  - nu e okey ceva la el

3.selectati toti clientii care au limita de credit mai mare decat 20.000 si locuiesc in SUA
select * from customers where creditlimit > 20.000 and country= 'USA'

4.selectati toti angajati de vanzari care au in extensia lor un 2 pe a 2a pozitie
select * from employees where extension like '_2%'

5.Aflati cati angajati sunt pe fiecare pozitie din companie
select count(jobTitle),jobTitle from employees GROUP BY jobTitle

6.folosind un subquery aflati toate preturile mai mari decat media preturilor
SELECT buyprice FROM products WHERE buyprice > (SELECT AVG(buyprice) FROM products)

7.pentru fiecare client al reprezentantului de vanzari 1166 afisati numele, orasul si data fiecarei comenzi
select e.employeenumber, c.customernumber, c.customername, o.orderdate, o.status from order o
join customers c on c.customernumber = o.customernumber
join employees e on e.employeenumber = c.sale......

8.cum putem afisa numarul comenzii alaturi de codul produsului si pretul acestuia
select * from products
select * from orders
select ordernumber,products.productcode, buyprice, from orderdetails
join products on orderdetails.productcode=products.productcode where orders.status='cancelled'

9. din caauza imflatiei toate preturile produselor s au marit cu 17% selectati 
tabelul de produse asa incat coloana de preturi sa reflecte schimbare (subquery)
select productcode,buyprice as 'pret vechi', buyprice + (17/100* buyprice) as 'infratie' from products

select count(employeeNumber) from employees
select avg(buyprice) from products
select * from payments
select sum(amount) from payments where customerNumber = 103
select * from orders
select min(amount),max(amount) from payments

select * from customers
select contactLastName,city from customers where city = 'NYC'
select * from employees
select * from employees where lastName = '%n'
select * from payments 
select MAX(amount) from payments
select * from employees
select officeCode,count(employeeNumber) from employees group by officeCode
select * from employees where officeCode group by employeeNumber having count(*) > 4
select contry, count(*) from customers GROUP BY country HAVING = 10
SELECT productLine, COUNT(*)
FROM products
GROUP BY productLine
HAVING COUNT(*) > 10;