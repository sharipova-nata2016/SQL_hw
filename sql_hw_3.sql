-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary from employees
join employee_salary 
	on employees.id = employee_salary.id
join salary
	on employee_salary.id = salary.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary from employees
join employee_salary
	on employees.id = employee_salary.id 
join salary
	on employee_salary.id = salary.id 
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary, employee_name from salary
left join employee_salary 
	on salary.id = employee_salary.salary_id
left join employees
	on employee_id = employees.id
where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary, employee_name from salary
left join employee_salary 
	on salary.id = employee_salary.salary_id
left join employees
	on employee_id = employees.id
where employee_name is null
and monthly_salary < 2000;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary from employees
left join employee_salary 
	on employees.id = employee_salary.id
left join salary
	on employee_salary.id = salary.id
where monthly_salary is null;
	
-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name from employees
join roles_employee
	on employees.id = roles_employee.id
join roles
	on role_id = roles.id;

-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from employees
join roles_employee
	on employees.id = roles_employee.id
join roles
	on role_id = roles.id
	where role_name like '%Java%';

-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from employees
join roles_employee
	on employees.id = roles_employee.id 
join roles 
	on role_id = roles.id 
	where role_name like '%Python%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from employees
join roles_employee
	on employees.id = roles_employee.id 
join roles 
	on role_id = roles.id 
	where role_name like '%QA%';

-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from employees
join roles_employee
	on employees.id = roles_employee.id 
join roles 
	on role_id = roles.id 
	where role_name like '%Manual QA%';

-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name from employees
join roles_employee
	on employees.id = roles_employee.id 
join roles 
	on role_id = roles.id 
	where role_name like '%Automatisation QA%';

-- 12. ������� ����� � �������� Junior ������������
select employee_name, role_name, monthly_salary from employees
join roles_employee
	on employees.id = roles_employee.id 
join roles 
	on role_id = roles.id 
join employee_salary 
	on employees.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
	where role_name like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������
select employee_name, role_name, monthly_salary from employees
join roles_employee
	on employees.id = roles_employee.id 
join roles 
	on role_id = roles.id 
join employee_salary 
	on employees.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
	where role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������
select employee_name, role_name, monthly_salary from employees
join roles_employee
	on employees.id = roles_employee.id 
join roles 
	on role_id = roles.id 
join employee_salary 
	on employees.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
	where role_name like '%Senior%';

-- 15. ������� �������� Java �������������
select role_name, monthly_salary from roles
join employee_salary 
	on roles.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
	where role_name like '%Java%';

-- 16. ������� �������� Python �������������
select role_name, monthly_salary from roles
join employee_salary 
	on roles.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
	where role_name like '%Python%';

-- 17. ������� ����� � �������� Junior Python �������������
select role_name, monthly_salary from roles
join employee_salary 
	on roles.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
	where role_name like '%Junior Python%';

-- 18. ������� ����� � �������� Middle JS �������������
select role_name, monthly_salary from roles
join employee_salary 
	on roles.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
	where role_name like '%Middle JavaScript%';

-- 19. ������� ����� � �������� Senior Java �������������
select role_name, monthly_salary from roles
join employee_salary 
	on roles.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
	where role_name like 'Senior Java developer';

-- 20. ������� �������� Junior QA ���������
select role_name, monthly_salary from roles
join employee_salary 
	on roles.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
	where role_name like '%Junior%' and role_name like '%QA%';

-- 21. ������� ������� �������� ���� Junior ������������
select avg (monthly_salary) from salary
join employee_salary 
	on salary.id = employee_salary.salary_id
join roles_employee 
	on employee_salary.employee_id = roles_employee.employee_id
join roles
	on roles_employee.role_id = roles.id
	where role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������
select sum (monthly_salary) from salary
join employee_salary 
	on salary.id = employee_salary.salary_id
join roles_employee 
	on employee_salary.employee_id = roles_employee.employee_id
join roles
	on roles_employee.role_id = roles.id
	where role_name like '%JavaScript%';

-- 23. ������� ����������� �� QA ���������
select min (monthly_salary) from salary
join employee_salary 
	on salary.id = employee_salary.salary_id
join roles_employee 
	on employee_salary.employee_id = roles_employee.employee_id
join roles
	on roles_employee.role_id = roles.id
	where role_name like '%QA%';

-- 24. ������� ������������ �� QA ���������
select max (monthly_salary) from salary
join employee_salary 
	on salary.id = employee_salary.salary_id
join roles_employee 
	on employee_salary.employee_id = roles_employee.employee_id
join roles
	on roles_employee.role_id = roles.id
	where role_name like '%QA%';

-- 25. ������� ���������� QA ���������
select sum (id) from roles
	where role_name like '%QA%';

-- 26. ������� ���������� Middle ������������.
select sum (id) from roles
	where role_name like '%Middle%';

-- 27. ������� ���������� �������������
select sum (id) from roles
	where role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.
select sum (monthly_salary) from salary
join employee_salary 
	on salary.id = employee_salary.salary_id
join roles_employee 
	on employee_salary.employee_id = roles_employee.employee_id
join roles
	on roles_employee.role_id = roles.id
	where role_name like '%developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from employees
join roles_employee
	on employees.id = roles_employee.employee_id
join roles 
	on roles_employee.role_id = roles.id
join employee_salary 
	on roles.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
order by monthly_salary;
	
-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from employees
join roles_employee
	on employees.id = roles_employee.employee_id
join roles 
	on roles_employee.role_id = roles.id
join employee_salary 
	on roles.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
where monthly_salary >= '1700' and monthly_salary <= '2300'
order by monthly_salary;
	
-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employees
join roles_employee
	on employees.id = roles_employee.employee_id
join roles 
	on roles_employee.role_id = roles.id
join employee_salary 
	on roles.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
where monthly_salary < '2300'
order by monthly_salary;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees
join roles_employee
	on employees.id = roles_employee.employee_id
join roles 
	on roles_employee.role_id = roles.id
join employee_salary 
	on roles.id = employee_salary.id
join salary
	on employee_salary.id = salary.id
where monthly_salary = '1100' or monthly_salary = '1500' or monthly_salary = '2000'
order by monthly_salary;