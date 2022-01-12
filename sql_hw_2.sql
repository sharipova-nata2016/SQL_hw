--1. Создать таблицу employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
--2. Наполнить таблицу employees 70 строками
insert into employees (employee_name)
values ('Robert Hayes'),
	   ('Maria Perez'),
	   ('John Burns'),
	   ('James Sanchez'),
	   ('Edward Reynolds'),
	   ('Janet Thornton'),
	   ('Linda Griffith'),
	   ('Michael Weaver'),
	   ('Gregory Jones'),
	   ('Tara Garcia'),
	   ('Joel Sanchez'),
	   ('Angela Fleming'),
	   ('Anna Clayton'),
	   ('Albert May'),
	   ('Ella Miller'),
	   ('Kenneth Taylor'),
	   ('Clarence Smith'),
	   ('Bobby Phillips'),
	   ('Ian Ross'),
	   ('Judy Russell'),
	   ('Daniel Walker'),
	   ('Mary Phillips'),
	   ('Kathryn Ellis'),
	   ('Peter Christensen'),
	   ('James Simpson'),
	   ('Janet Simmons'),
	   ('Michael Rodriguez'),
	   ('Robert Taylor'),
	   ('Harold Gordon'),
	   ('Adam Mitchell'),
	   ('Daniel Reynolds'),
	   ('Daniel Obrien'),
	   ('William Hanson'),
	   ('Stephanie Lopez'),
	   ('Beverly Fisher'),
	   ('Erik Davis'),
	   ('Raymond Stevenson'),
	   ('Tiffany Carter'),
	   ('Patricia Gomez'),
	   ('Vivian Lewis'),
	   ('David Carr'),
	   ('Samuel Jimenez'),
	   ('Robert Zimmerman'),
	   ('Michael Smith'),
	   ('Alma Haynes'),
	   ('Janet Smith'),
	   ('Amy Snyder'),
	   ('James Williams'),
	   ('Jackie Dennis'),
	   ('Cathy Hawkins'),
	   ('Brenda Hubbard'),
	   ('Aaron Rivera'),
	   ('Vickie Allen'),
	   ('Thomas Morris'),
	   ('Heidi Hill'),
	   ('Charles Ward'),
	   ('Paul Bowen'),
	   ('Charlie Larson'),
	   ('Dorothy Blake'),
	   ('Donald Taylor'),
	   ('Kristin Erickson'),
	   ('John Gonzales'),
	   ('John Lopez'),
	   ('Luis Brooks'),
	   ('Geraldine Stone'),
	   ('Anita Graves'),
	   ('Jesus Martin'),
	   ('Dan Johnson'),
	   ('Jessica Thomas'),
	   ('Laura Hicks');
	  
--3. Создать таблицу salary
create table salary(
id serial primary key,
monthly_salary int not null
);
--4. Наполнить таблицу salary15 строками.
insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
--5. Создать таблицу employee_salary
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
--6. Наполнить таблицу employee_salary 40 строками
-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values (1,2),
	  (2,3),
	  (3,4),
	  (4,5),
	  (5,6),
	  (6,7),
	  (7,8),
	  (8,9),
	  (9,10),
	  (10,11),
	  (11,12),
	  (12,13),
	  (13,14),
	  (14,15),
	  (15,14),
	  (16,13),
	  (17,12),
	  (18,11),
	  (19,10),
	  (20,9),
	  (21,8),
	  (22,7),
	  (23,6),
	  (24,5),
	  (25,4),
	  (26,3),
	  (27,2),
	  (28,1),
	  (29,1),
	  (30,2);
insert into employee_salary (employee_id, salary_id)
values (71,1),
	   (72,2),
	   (73,3),
	   (74,4),
	   (75,5),
	   (76,6),
	   (77,7),
	   (78,8),
	   (79,9),
	   (80,10);
--7. Создать таблицу roles
create table roles(
	id serial primary key,
	role_name int not null unique 
);
--8. Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(40) using role_name:: varchar(30);

--9. Наполнить таблицу roles 20 строками:
insert into roles (role_name)
values ('Junior Python developer'),
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
      
--10. Создать таблицу roles_employee
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

--11. Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id, role_id)
values (20,1),
       (21,1),
       (22,2),
       (23,3),
       (24,4),
       (25,5),
       (26,6),
       (27,7),
       (28,8),
       (29,9),
       (30,10),
       (31,1),
       (32,2),
       (33,3),
       (34,4),
       (35,5),
       (36,6),
       (37,7),
       (38,8),
       (39,9),
       (40,10),
       (1,1),
       (42,2),
       (43,3),
       (44,4),
       (45,5),
       (46,6),
       (47,7),
       (48,8),
       (49,9),
       (50,10),
       (51,1),
       (52,2),
       (53,3),
       (54,4),
       (55,5),
       (56,6),
       (57,7),
       (58,8),
       (59,9),
       (60,10);
      
select * from roles;
 
select * from roles_employee;