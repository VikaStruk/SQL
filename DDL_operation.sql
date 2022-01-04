-- Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
-- Наполнить таблицу employee 70 строками

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);
select * from employees;


insert into employees (employee_name)
values  ('Абрам'),
		('Гевор'),
		('Лаврентий'),
		('Авдей'),
		('Герасим'),
		('Авраам'),
		('Леонард'),
		('Рубен'),
		('Динасий'),
		('Стакрат'),
		('Соломон'),
		('Гаяс'),
		('Гарри'),
		('Гамлет'),
		('Галактион'),
		('Гавриил'),
		('Володар'),
		('Влас'),
		('Владлен'),
		('Витольд'),
		('Витаутас'),
		('Виссарион'),
		('Вильгельм'),
		('Вилли'),
		('Вилен'),
		('Викентий'),
		('Венедикт'),
		('Велор'),
		('Велизар'),
		('Ватслав'),
		('Бруно'),
		('Бронислав'),
		('Боян'),
		('Бореслав'),
		('Бонифаций'),
		('Боголюб'),
		('Берек'),
		('Бенедикт'),
		('Бежен'),
		('Бахрам'),
		('Ашот'),
		('Ахмет'),
		('Арон'),
		('Арнольд'),
		('Арно'),
		('Армен'),
		('Лавр'),
		('Кузьма'),
		('Корнилий'),
		('Корней'),
		('Кондрат'),
		('Клод'),
		('Климент'),
		('Клаус'),
		('Клавдий'),
		('Ким'),
		('Карл'),
		('Казимир'),
		('Казбек'),
		('Исмаил'),
		('Исидор'),
		('Исаак'),
		('Иса'),
		('Ираклий'),
		('Ипполит'),
		('Иосиф'),
		('Ион'),
		('Иоанн'),
		('Инокентий'),
		('Ильшат');
	
-- Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
-- Наполнить таблицу salary 15 строками
	
create  table salary (
id serial primary key,
monthly_salary int not null
);

select * from salary;

insert into salary (monthly_salary)
values  (1000),
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
		(2400);

	
-- Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

-- Наполнить таблицу employee_salary 40 строками( в 10 строк из 40 вставить несуществующие employee_id)
	
create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

select * from employee_salary;

insert into employee_salary(employee_id,salary_id)
values  (3,1),
		(1,2),
		(4,5),
		(5,8),
		(7,2),
		(9,1),
		(11,55),
		(13,33),
		(22,22),
		(32,11),
		(65,44),
		(36,55),
		(28,66),
		(10,69),
		(20,27),
		(30,54),
		(40,34),
		(50,23),
		(60,52),
		(70,43),
		(77,15),
		(78,68),
		(98,62),
		(89,17),
		(120,32),
		(111,61),
		(99,36),
		(222,32),
		(75,59),
		(93,27),
		(43,24),
		(56,51),
		(68,9),
		(21,7),
		(55,35),
		(49,34),
		(46,52),
		(38,13),
		(64,23),
		(19,26);

-- Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles (
id serial primary key,
role_name int not null unique
);

select * from roles;

-- Поменять тип столба role_name с int на varchar(30)

alter table roles alter column role_name type varchar(30);

-- Наполнить таблицу roles 20 строками

insert into roles(role_name)
values  ('Junior Python developer'),
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
  	
-- Создать таблицу roles_employee,  
-- id. Serial  primary key
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id) 
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

  	
 create table roles_employee (
 id serial primary key,
 employee_id int not null unique,
 role_id int not null,
 foreign key (employee_id)
 	references employees(id),
 foreign key (role_id)
 	references roles(id)
 );

select * from roles_employee;

-- Наполнить таблицу roles_employee 40 строками

insert into roles_employee (employee_id, role_id)
values  (3,1),
		(1,2),
		(4,5),
		(5,8),
		(7,2),
		(9,1),
		(11,10),
		(13,11),
		(22,13),
		(32,12),
		(65,14),
		(36,12),
		(28,14),
		(10,15),
		(20,3),
		(30,3),
		(40,1),
		(50,4),
		(60,17),
		(70,18),
		(35,15),
		(37,11),
		(47,13),
		(48,17),
		(51,14),
		(52,16),
		(53,19),
		(54,20),
		(56,15),
		(57,12),
		(43,14),
		(8,15),
		(68,9),
		(21,7),
		(55,16),
		(49,3),
		(46,6),
		(38,7),
		(64,8),
		(19,14); 