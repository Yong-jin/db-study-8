--1.

select * from student;
--  name   id    weight
select name, id, weight from student;

select 
    name || '''s ID : ' || id
    || ', WEIGHT is ' || weight || 'Kg' AS "ID AND WEIGHT"
from student;

--2.
select * from emp;

select ename, job from emp;

select ename || '(' || job || ') , ' || ename || '''' || job || '''' "NAME AND JOB"
from emp;

--3.
select * from emp;

select ename || '''s sal is $' || sal "Name and Sal"
from emp;


