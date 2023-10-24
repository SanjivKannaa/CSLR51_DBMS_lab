create table EMP (employee_id int, first_name varchar(20), last_name varchar(20), email varchar(20), phone_number varchar(30), hire_date date, job_id varchar(30), commissino_pct float, manager_id int, department_id int);
create table DEPT (department_id int, department_name varchar(20), manager_id int, location_id int);
create table LOCA (location_id int, street_address varchar(30), postal_code int, city varchar(10), stata_province varchar(30), country_id int);

insert into EMP values (1, "sanjiv", "lastname1", "emp1@company.org", "0000000001", "2023-08-24", "IT_PROG", 10.1 ,1, 1);
insert into EMP values (2, "soma", "lastname2", "emp2@company.org", "0000000002", "2023-08-24", "IT_PROG", 10.2 ,1, 1);
insert into EMP values (3, "sri", "lastname3", "emp3@company.org", "0000000003", "2023-08-24", "AD_PRESS", 10.3 ,2, 2);
insert into EMP values (134, "vignesh", "lastname134", "emp1@company.org", "0000000004", "2023-08-24", "IT_PROG", 10.4 ,1, 1);
insert into EMP values (159, "mano", "lastname159", "emp1@company.org", "0000000005", "2023-08-24", "IT_PROG", 10.5 ,1, 1);
insert into EMP values (183, "nithin", "lastname183", "emp1@company.org", "0000000006", "2023-08-24", "IT_PROG", 10.6 ,1, 1);
insert into EMP values (8, "jaman", "lastname8", "emp8@company.org", "0000000007", "2023-08-24", "AD_PRESS", 10.7 ,2, 2);
insert into EMP values (9, "bhoop", "lastname9", "emp9@company.org", "0000000008", "2023-08-24", "AD_PRESS", 10.8 ,2, 2);


insert into DEPT values (1, "IT", 1, 1);
insert into DEPT values (2, "Administration", 2, 2);


insert into LOCA values (1, "IT_BUILDING", 1, "Trichy", "TN", 1);
insert into LOCA values (2, "ADMIN_BLOCK", 2, "Trichy", "TN", 1);

select * from EMP;
+-------------+------------+-------------+------------------+--------------+------------+----------+----------------+------------+---------------+
| employee_id | first_name | last_name   | email            | phone_number | hire_date  | job_id   | commissino_pct | manager_id | department_id |
+-------------+------------+-------------+------------------+--------------+------------+----------+----------------+------------+---------------+
|           1 | sanjiv     | lastname1   | emp1@company.org | 0000000001   | 2023-08-24 | IT_PROG  |           10.1 |          1 |             1 |
|           2 | soma       | lastname2   | emp2@company.org | 0000000002   | 2023-08-24 | IT_PROG  |           10.2 |          1 |             1 |
|           3 | sri        | lastname3   | emp3@company.org | 0000000003   | 2023-08-24 | AD_PRESS |           10.3 |          2 |             2 |
|         134 | vignesh    | lastname134 | emp1@company.org | 0000000004   | 2023-08-24 | IT_PROG  |           10.4 |          1 |             1 |
|         159 | mano       | lastname159 | emp1@company.org | 0000000005   | 2023-08-24 | IT_PROG  |           10.5 |          1 |             1 |
|         183 | nithin     | lastname183 | emp1@company.org | 0000000006   | 2023-08-24 | IT_PROG  |           10.6 |          1 |             1 |
|           8 | jaman      | lastname8   | emp8@company.org | 0000000007   | 2023-08-24 | AD_PRESS |           10.7 |          2 |             2 |
|           9 | bhoop      | lastname9   | emp9@company.org | 0000000008   | 2023-08-24 | AD_PRESS |           10.8 |          2 |             2 |
+-------------+------------+-------------+------------------+--------------+------------+----------+----------------+------------+---------------+

select * from DEPT;
+---------------+-----------------+------------+-------------+
| department_id | department_name | manager_id | location_id |
+---------------+-----------------+------------+-------------+
|             1 | IT              |          1 |           1 |
|             2 | Administration  |          2 |           2 |
+---------------+-----------------+------------+-------------+

select * from LOCA;
+-------------+----------------+-------------+--------+----------------+------------+
| location_id | street_address | postal_code | city   | stata_province | country_id |
+-------------+----------------+-------------+--------+----------------+------------+
|           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|           2 | ADMIN_BLOCK    |           2 | Trichy | TN             |          1 |
+-------------+----------------+-------------+--------+----------------+------------+

q1.
SELECT * FROM EMP INNER JOIN DEPT INNER JOIN LOCA ON EMP.DEPARTMENT_ID=DEPT.DEPARTMENT_ID AND DEPT.LOCATION_ID=LOCA.LOCATION_ID WHERE EMPLOYEE_ID IN (134,159,183);
+-------------+------------+-------------+------------------+--------------+------------+---------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+
| employee_id | first_name | last_name   | email            | phone_number | hire_date  | job_id  | commissino_pct | manager_id | department_id | department_id | department_name | manager_id | location_id | location_id | street_address | postal_code | city   | stata_province | country_id |
+-------------+------------+-------------+------------------+--------------+------------+---------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+
|         134 | vignesh    | lastname134 | emp1@company.org | 0000000004   | 2023-08-24 | IT_PROG |           10.4 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|         159 | mano       | lastname159 | emp1@company.org | 0000000005   | 2023-08-24 | IT_PROG |           10.5 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|         183 | nithin     | lastname183 | emp1@company.org | 0000000006   | 2023-08-24 | IT_PROG |           10.6 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
+-------------+------------+-------------+------------------+--------------+------------+---------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+

q2.
SELECT * FROM EMP INNER JOIN DEPT INNER JOIN LOCA ON EMP.DEPARTMENT_ID=DEPT.DEPARTMENT_ID AND  DEPT.LOCATION_ID=LOCA.LOCATION_ID WHERE EMP.DEPARTMENT_ID NOT IN (SELECT DEPARTMENT_ID FROM DEPT WHERE MANAGER_ID BETWEEN 100 AND 200);
+-------------+------------+-------------+------------------+--------------+------------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+
| employee_id | first_name | last_name   | email            | phone_number | hire_date  | job_id   | commissino_pct | manager_id | department_id | department_id | department_name | manager_id | location_id | location_id | street_address | postal_code | city   | stata_province | country_id |
+-------------+------------+-------------+------------------+--------------+------------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+
|           1 | sanjiv     | lastname1   | emp1@company.org | 0000000001   | 2023-08-24 | IT_PROG  |           10.1 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|           2 | soma       | lastname2   | emp2@company.org | 0000000002   | 2023-08-24 | IT_PROG  |           10.2 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|           3 | sri        | lastname3   | emp3@company.org | 0000000003   | 2023-08-24 | AD_PRESS |           10.3 |          2 |             2 |             2 | Administration  |          2 |           2 |           2 | ADMIN_BLOCK    |           2 | Trichy | TN             |          1 |
|         134 | vignesh    | lastname134 | emp1@company.org | 0000000004   | 2023-08-24 | IT_PROG  |           10.4 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|         159 | mano       | lastname159 | emp1@company.org | 0000000005   | 2023-08-24 | IT_PROG  |           10.5 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|         183 | nithin     | lastname183 | emp1@company.org | 0000000006   | 2023-08-24 | IT_PROG  |           10.6 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|           8 | jaman      | lastname8   | emp8@company.org | 0000000007   | 2023-08-24 | AD_PRESS |           10.7 |          2 |             2 |             2 | Administration  |          2 |           2 |           2 | ADMIN_BLOCK    |           2 | Trichy | TN             |          1 |
|           9 | bhoop      | lastname9   | emp9@company.org | 0000000008   | 2023-08-24 | AD_PRESS |           10.8 |          2 |             2 |             2 | Administration  |          2 |           2 |           2 | ADMIN_BLOCK    |           2 | Trichy | TN             |          1 |
+-------------+------------+-------------+------------------+--------------+------------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+

q3.
select * from EMP inner JOIN DEPT inner JOIN LOCA  on EMP.department_id=DEPT.department_id and DEPT.location_id=LOCA.location_id where EMP.commissino_pct in (select max(commissino_pct) from EMP where commissino_pct not in (select max(commissino_pct) from EMP));
+-------------+------------+-----------+------------------+--------------+------------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+
| employee_id | first_name | last_name | email            | phone_number | hire_date  | job_id   | commissino_pct | manager_id | department_id | department_id | department_name | manager_id | location_id | location_id | street_address | postal_code | city   | stata_province | country_id |
+-------------+------------+-----------+------------------+--------------+------------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+
|           8 | jaman      | lastname8 | emp8@company.org | 0000000007   | 2023-08-24 | AD_PRESS |           10.7 |          2 |             2 |             2 | Administration  |          2 |           2 |           2 | ADMIN_BLOCK    |           2 | Trichy | TN             |          1 |
+-------------+------------+-----------+------------------+--------------+------------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+

q4.
select * from EMP inner JOIN DEPT inner JOIN LOCA  on EMP.department_id=DEPT.department_id and DEPT.location_id=LOCA.location_id where EMP.commissino_pct in (select min(commissino_pct) from EMP where commissino_pct not in (select min(commissino_pct) from EMP));
+-------------+------------+-----------+------------------+--------------+------------+---------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+
| employee_id | first_name | last_name | email            | phone_number | hire_date  | job_id  | commissino_pct | manager_id | department_id | department_id | department_name | manager_id | location_id | location_id | street_address | postal_code | city   | stata_province | country_id |
+-------------+------------+-----------+------------------+--------------+------------+---------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+
|           2 | soma       | lastname2 | emp2@company.org | 0000000002   | 2023-08-24 | IT_PROG |           10.2 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
+-------------+------------+-----------+------------------+--------------+------------+---------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+

select * from EMP inner JOIN DEPT inner JOIN LOCA  on EMP.department_id=DEPT.department_id and DEPT.location_id=LOCA.location_id where exists (select DISTINCT(manager_id) from EMP);
+-------------+------------+-------------+------------------+--------------+------------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+
| employee_id | first_name | last_name   | email            | phone_number | hire_date  | job_id   | commissino_pct | manager_id | department_id | department_id | department_name | manager_id | location_id | location_id | street_address | postal_code | city   | stata_province | country_id |
+-------------+------------+-------------+------------------+--------------+------------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+
|           1 | sanjiv     | lastname1   | emp1@company.org | 0000000001   | 2023-08-24 | IT_PROG  |           10.1 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|           2 | soma       | lastname2   | emp2@company.org | 0000000002   | 2023-08-24 | IT_PROG  |           10.2 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|           3 | sri        | lastname3   | emp3@company.org | 0000000003   | 2023-08-24 | AD_PRESS |           10.3 |          2 |             2 |             2 | Administration  |          2 |           2 |           2 | ADMIN_BLOCK    |           2 | Trichy | TN             |          1 |
|         134 | vignesh    | lastname134 | emp1@company.org | 0000000004   | 2023-08-24 | IT_PROG  |           10.4 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|         159 | mano       | lastname159 | emp1@company.org | 0000000005   | 2023-08-24 | IT_PROG  |           10.5 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|         183 | nithin     | lastname183 | emp1@company.org | 0000000006   | 2023-08-24 | IT_PROG  |           10.6 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|           8 | jaman      | lastname8   | emp8@company.org | 0000000007   | 2023-08-24 | AD_PRESS |           10.7 |          2 |             2 |             2 | Administration  |          2 |           2 |           2 | ADMIN_BLOCK    |           2 | Trichy | TN             |          1 |
|           9 | bhoop      | lastname9   | emp9@company.org | 0000000008   | 2023-08-24 | AD_PRESS |           10.8 |          2 |             2 |             2 | Administration  |          2 |           2 |           2 | ADMIN_BLOCK    |           2 | Trichy | TN             |          1 |
+-------------+------------+-------------+------------------+--------------+------------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+

q5.
select DISTINCT(DEPT.department_name) from EMP inner JOIN DEPT inner JOIN LOCA  on EMP.department_id=DEPT.department_id and DEPT.location_id=LOCA.location_id;
+-----------------+
| department_name |
+-----------------+
| IT              |
| Administration  |
+-----------------+

q6.
select first_name, last_name, DEPT.department_name from EMP inner JOIN DEPT inner JOIN LOCA  on EMP.department_id=DEPT.department_id and DEPT.location_id=LOCA.location_id where exists (select commissino_pct from EMP where commissino_pct > 3700);
Empty set

q7.
select DEPT.department_id,department_name from DEPT inner join EMP on DEPT.department_id=EMP.department_id where not exists(select employee_id from DEPT inner join EMP on DEPT.department_id=EMP.department_id);
Empty set

q8.
select employee_id, concat(first_name,' ',last_name)as full_name from EMP where employee_id in (select employee_id from EMP where first_name like "%t%");
+-------------+--------------------+
| employee_id | full_name          |
+-------------+--------------------+
|         183 | nithin lastname183 |
+-------------+--------------------+

q9.
select employee_id, concat(first_name,' ',last_name)as full_name,commissino_pct as salary from EMP where commissino_pct>(select avg(commissino_pct) from EMP)and exists(select employee_id from EMP where first_name like '%j%');
+-------------+--------------------+--------+
| employee_id | full_name          | salary |
+-------------+--------------------+--------+
|           8 | jaman lastname8    |   10.7 |
+-------------+--------------------+--------+

q10.
select employee_id, concat(first_name,' ',last_name)as full_name, job_id as job_title from EMP where commissino_pct<any(select (commissino_pct) from EMP where job_id="IT_PROG");
+-------------+---------------------+-----------+
| employee_id | full_name           | job_title |
+-------------+---------------------+-----------+
|           1 | sanjiv lastname1    | IT_PROG   |
|           2 | soma lastname2      | IT_PROG   |
|           3 | sri lastname3       | AD_PRESS  |
|         134 | vignesh lastname134 | IT_PROG   |
|         159 | mano lastname159    | IT_PROG   |
+-------------+---------------------+-----------+

Q11.
select employee_id, concat(first_name,' ',last_name)as full_name, job_id as job_title from EMP where commissino_pct<any(select (commissino_pct) from EMP where job_id="IT_PROG") and job_id<>"IT_PROG";
+-------------+---------------+-----------+
| employee_id | full_name     | job_title |
+-------------+---------------+-----------+
|           3 | sri lastname3 | AD_PRESS  |
+-------------+---------------+-----------+

Q12.
select employee_id, concat(first_name,' ',last_name)as full_name, job_id as job_title from EMP where commissino_pct>all(select (commissino_pct) from EMP where job_id="IT_PROG") and job_id<>"IT_PROG";
+-------------+-----------------+-----------+
| employee_id | full_name       | job_title |
+-------------+-----------------+-----------+
|           8 | jaman lastname8 | AD_PRESS  |
|           9 | bhoop lastname9 | AD_PRESS  |
+-------------+-----------------+-----------+

Q13.
select employee_id, concat(first_name,' ',last_name)as full_name, job_id as job_title from EMP where commissino_pct>all(select avg(commissino_pct) from EMP group by job_id);
+-------------+--------------------+-----------+
| employee_id | full_name          | job_title |
+-------------+--------------------+-----------+
|         183 | nithin lastname183 | IT_PROG   |
|           8 | jaman lastname8    | AD_PRESS  |
|           9 | bhoop lastname9    | AD_PRESS  |
+-------------+--------------------+-----------+

q14.
select first_name, last_name, commissino_pct as salary, EMP.department_id from EMP inner JOIN DEPT inner JOIN LOCA  on EMP.department_id=DEPT.department_id and DEPT.location_id=LOCA.location_id where EMP.commissino_pct in (select commissino_pct from EMP where commissino_pct > (select avg(commissino_pct) from EMP)) order by EMP.commissino_pct desc ;
+------------+-------------+--------+---------------+
| first_name | last_name   | salary | department_id |
+------------+-------------+--------+---------------+
| bhoop      | lastname9   |   10.8 |             2 |
| jaman      | lastname8   |   10.7 |             2 |
| nithin     | lastname183 |   10.6 |             1 |
| mano       | lastname159 |   10.5 |             1 |
+------------+-------------+--------+---------------+

q15.
select * from EMP inner JOIN DEPT inner JOIN LOCA  on EMP.department_id=DEPT.department_id and DEPT.location_id=LOCA.location_id where EMP.commissino_pct in (select commissino_pct from EMP where commissino_pct between (select min(commissino_pct) from EMP) and 2500);
+-------------+------------+-------------+------------------+--------------+------------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+
| employee_id | first_name | last_name   | email            | phone_number | hire_date  | job_id   | commissino_pct | manager_id | department_id | department_id | department_name | manager_id | location_id | location_id | street_address | postal_code | city   | stata_province | country_id |
+-------------+------------+-------------+------------------+--------------+------------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+
|           1 | sanjiv     | lastname1   | emp1@company.org | 0000000001   | 2023-08-24 | IT_PROG  |           10.1 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|           2 | soma       | lastname2   | emp2@company.org | 0000000002   | 2023-08-24 | IT_PROG  |           10.2 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|           3 | sri        | lastname3   | emp3@company.org | 0000000003   | 2023-08-24 | AD_PRESS |           10.3 |          2 |             2 |             2 | Administration  |          2 |           2 |           2 | ADMIN_BLOCK    |           2 | Trichy | TN             |          1 |
|         134 | vignesh    | lastname134 | emp1@company.org | 0000000004   | 2023-08-24 | IT_PROG  |           10.4 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|         159 | mano       | lastname159 | emp1@company.org | 0000000005   | 2023-08-24 | IT_PROG  |           10.5 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|         183 | nithin     | lastname183 | emp1@company.org | 0000000006   | 2023-08-24 | IT_PROG  |           10.6 |          1 |             1 |             1 | IT              |          1 |           1 |           1 | IT_BUILDING    |           1 | Trichy | TN             |          1 |
|           8 | jaman      | lastname8   | emp8@company.org | 0000000007   | 2023-08-24 | AD_PRESS |           10.7 |          2 |             2 |             2 | Administration  |          2 |           2 |           2 | ADMIN_BLOCK    |           2 | Trichy | TN             |          1 |
|           9 | bhoop      | lastname9   | emp9@company.org | 0000000008   | 2023-08-24 | AD_PRESS |           10.8 |          2 |             2 |             2 | Administration  |          2 |           2 |           2 | ADMIN_BLOCK    |           2 | Trichy | TN             |          1 |
+-------------+------------+-------------+------------------+--------------+------------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+-------------+----------------+-------------+--------+----------------+------------+











