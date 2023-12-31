-- public.students definition

-- Drop table

-- DROP TABLE public.students;

CREATE TABLE public.students (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	created_on timestamp NOT NULL,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (id)
);

select * from students;

select name from students;

select id from students;

select name from students;

select email from students;

select name, email from students;

select id, name, email, created_on from students;

select name from students where password = '12333';

select * from students where created_on = '2021-03-26 00:00:00';

select * from students where name like '%Anna%';

select * from students where name like '%8';

select * from students where name like '%a%';

select * from students where created_on = '2021-07-12 00:00:00';

select * from students where created_on = '2021-07-12 00:00:00' and password = ‘1m313’;

select * from students where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

select * from students where created_on = '2021-07-12 00:00:00' and name like '%8%';

select * from students where id = '110';

select * from students where id = '153';

select * from students where id >'14';

select * from students where id >'130';

select * from students where id<'127' or id>'188';

select * from students where id<='137';

select * from students where id>= '137';

select * from students where id>'180' and id<'190';

select * from students where id>='180' and id<='190';

select * from students where password = '12333' or password = '1m313' or password = '123313';

select * from students where created_on = '2020-10-03 00:00:00' or created_on = '2021-05-19 00:00:00' or created_on = '2021-03-26 00:00:00';

select min(id) from students;

select max(id) from students;

select count(name) from students;

select id, name, created_on from students ORDER by created_on;

select id, name, created_on from students ORDER by created_on DESC;


