select * from employees
select * from company

---view

create view employees_company_data as
select e.id,e.name,c.company_name
	from employees as e
	inner join company as c 
	on e.id = c.company_id

---insert 

insert into employees_company_data (id,name,company_name) values (16,'arman','company16')

---update 

update employees_company_data set company_name = 'company20' where id = 1

---delete 

delete from employees_company_data where id = 2

---alter

alter view employees_company_data as add column city double precision

select * from employees_company_data


-- Having subquery

select * from employees
	
select id,name,age,department,avg (salary) from employees
where age > 30
group by id,name,age,department
having avg (salary) > 60000	












