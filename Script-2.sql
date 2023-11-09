select employee_name, s.monthly_salary from employees as e 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id;

select employee_name, s.monthly_salary from employees as e 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id
where s.monthly_salary < 2000;

select * from salary
where id not in (select salary_id from employee_salary);

select * from salary as s
where id not in (select salary_id from employee_salary as es) and s.monthly_salary < 2000;

select * from employees
where id not in (select employee_id from employee_salary);

select e.employee_name, r.role_name from employees as e 
join roles_employee re  
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like '%Java developer';

select e.employee_name, r.role_name from employees as e 
join roles_employee re  
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like '%Python developer';

select e.employee_name, r.role_name from employees as e 
join roles_employee re  
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like '%QA engineer';

select e.employee_name, r.role_name from employees as e 
join roles_employee re  
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like '%Manual QA engineer';

select e.employee_name, r.role_name from employees as e 
join roles_employee re  
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like '%Automation QA%';

create table employee_salaryQA as 
select e.employee_name, r.role_name as employee_role, s.monthly_salary from employees as e 
left join roles_employee re  
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id = s.id

truncate table employee_salaryQA;

alter sequence employee_salary_id_seq restart with 1;

select * from employee_salaryQA

select employee_name, monthly_salary from employee_salaryQA 
where employee_role like '%Junior%';

select employee_name, monthly_salary from employee_salaryQA 
where employee_role like '%Middle%';

select employee_name, monthly_salary from employee_salaryQA 
where employee_role like '%Senior%';

select monthly_salary from employee_salaryQA 
where employee_role like '%Java developer%';

select monthly_salary from employee_salaryQA 
where employee_role like '%Python developer%';

select employee_name, monthly_salary from employee_salaryQA 
where employee_role like '%Junior Python%';

select employee_name, monthly_salary from employee_salaryQA 
where employee_role like '%Middle JavaScript%';

select employee_name, monthly_salary from employee_salaryQA 
where employee_role like '%Senior Java%';

select monthly_salary from employee_salaryQA 
where employee_role like '%Junior%QA%';

select AVG(monthly_salary) from employee_salaryQA 
where employee_role like '%Junior%';

select sum(monthly_salary) from employee_salaryQA 
where employee_role like '%JavaScript developer%';

select min(monthly_salary) from employee_salaryQA 
where employee_role like '%QA%';

select max(monthly_salary) from employee_salaryQA 
where employee_role like '%QA%';

select COUNT(monthly_salary) from employee_salaryQA 
where employee_role like '%QA%';

select COUNT(monthly_salary) from employee_salaryQA 
where employee_role like '%Middle%';

select COUNT(monthly_salary) from employee_salaryQA 
where employee_role like '%developer%';

select sum(monthly_salary) from employee_salaryQA 
where employee_role like '%developer%';

select * from employee_salaryQA ORDER by monthly_salary;

select * from employee_salaryQA 
where monthly_salary between 1700 and 2300
ORDER by monthly_salary;

select * from employee_salaryQA 
where monthly_salary < 2300
ORDER by monthly_salary;

select * from employee_salaryQA 
where monthly_salary in (1100, 1500, 2000)
ORDER by monthly_salary;


