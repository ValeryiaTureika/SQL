CREATE TABLE public.employees(
	id serial PRIMARY KEY,
	employee_name varchar(50) NOT NULL
);

select * from employees;

INSERT INTO employees(employee_name) 
VALUES (1), (165), (0), ('name'), (2), 
(165), (0), ('name1'),(3), (125),
(4), ('name1'), (5), (165), (2), 
('name4'), (41), (3165), (0), ('name'),
(17), (165), (70), ('name5'), (71),
(1865), (80), ('name8'),(18), (1685),
(50), ('name5'),(15), (1655), (50),
('name7'), (16), (1665), (60), ('name6'),
(14), (1654), (40), ('name4'), (14),
(195), (50), ('name6'), (16), (175),
(10), ('name8'),(16), (1657), (50),
('name'), (10), (165), (0), ('name'),
(12), (185), (50), ('name6'),(18),
(175), (70), ('name7'),('name4'),(18);

CREATE TABLE public.salary(
	id serial PRIMARY KEY,
	monthly_salary int NOT NULL
);

select * from salary;

INSERT INTO salary(monthly_salary) 
VALUES (1000), (1100), (1200), (1300), (1400),
(1500), (1600), (1700), (1800), (1900),
(2000), (2100), (2200), (2300), (2400),
(2500);

CREATE TABLE public.employee_salary(
	id serial PRIMARY KEY,
	employee_id Int not null unique, 
	salary_id Int not null
);

select * from employee_salary;

INSERT INTO employee_salary(employee_id, salary_id) 
values (3, 7), (1, 4), (5, 9), (40, 13), (23, 4),
(11, 2), (52, 10), (15, 13), (26, 4), (16, 1),
(33, 7);


INSERT INTO employee_salary(employee_id, salary_id) 
values (2, 7), (4, 4), (6, 9), (7, 13), (8, 4),
(9, 2), (10, 10), (12, 13), (13, 4), (14, 1),
(17, 7), (18, 7), (19, 4), (20, 9), (21, 13), (22, 4),
(24, 2), (25, 10), (27, 13), (28, 4), (29, 1),
(30, 7), (31, 7), (32, 4), (34, 9), (35, 13), (36, 4),
(37, 2), (38, 10), (39, 13), (41, 4), (42, 1),
(43, 7);


CREATE TABLE public.roles(
	id serial PRIMARY KEY,
	role_name int not null unique
);

select * from roles;

ALTER TABLE roles

ALTER COLUMN role_name type varchar(30);

INSERT INTO roles(role_name) 
values
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

CREATE TABLE public.roles_employee(
	id serial PRIMARY KEY,
	employee_id Int not null unique, 
	role_id Int not null,
	foreign key(employee_id) 
	 references employees(id),
	foreing keyforeign key(role_id) 
	 references roles(id)
);

select * from roles_employee;

INSERT INTO roles_employee(employee_id, role_id) 
values (3, 7), (1, 4), (5, 9), (40, 13), (23, 4),
(11, 2), (52, 10), (15, 13), (26, 4), (16, 1),
(33, 7), (2, 7), (4, 4), (6, 9), (7, 13), (8, 4),
(9, 2), (10, 10), (12, 13), (13, 4), (14, 1),
(17, 7), (18, 7), (19, 4), (20, 9), (21, 13), (22, 4),
(24, 2), (25, 10), (27, 13), (28, 4), (29, 1),
(30, 7), (31, 7), (32, 4), (34, 9), (35, 13), (36, 4),
(37, 2), (38, 10), (39, 13), (41, 4), (42, 1),
(43, 7);









