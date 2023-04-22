--1. 70년대 생(1970~1979) 중 여자이면서 전씨인 사원의 이름과 주민번호, 부서 명, 직급 조회
select emp_name, emp_no, d.DEPT_TITLE, j.JOB_NAME
    from EMPLOYEE e natural join job j 
        join DEPARTMENT d on e.dept_code = d.DEPT_ID
    where emp_name Like '전%' and emp_no like '7%'
;
--2. 나이 상 가장 막내의 사원 코드, 사원 명, 나이, 부서 명, 직급 명 조회
select emp_id, emp_name
        ,(to_char(sysdate,'yy')+'100')-(substr(emp_no,1,2)) 나이
        , d.DEPT_TITLE
        , j.JOB_NAME
    from employee e natural join job j 
        join DEPARTMENT d on e.dept_code = d.DEPT_ID
    where emp_no = (select max(emp_no) from employee) 
;
--3. 이름에 ‘형’이 들어가는 사원의 사원 코드, 사원 명, 직급 조회
select emp_id, emp_name, JOB_NAME
    from employee e join job j
    on e.job_code = j.job_code
    where emp_name like '%형%'
;
--4. 부서코드가 D5이거나 D6인 사원의 사원 명, 직급 명, 부서 코드, 부서 명 조회
select emp_name, j.JOB_NAME , dept_code, d.DEPT_TITLE
    from employee e natural join job j 
        join DEPARTMENT d on e.dept_code = d.DEPT_ID
    where dept_code in('D5','D6')
;
--5. 보너스를 받는 사원의 사원 명, 부서 명, 지역 명 조회
select emp_name, bonus, d.DEPT_TITLE, l.local_name
    from employee e join DEPARTMENT d on e.dept_code = d.DEPT_ID
                    join LOCATION l on d.LOCATION_ID = l.local_code  
    where bonus is not null
;
--6. 사원 명, 직급 명, 부서 명, 지역 명 조회
select emp_name, j.JOB_NAME, d.DEPT_TITLE, l.LOCAL_NAME
    from employee e join DEPARTMENT d on e.dept_code = d.DEPT_ID
                    join job j on e.job_code = j.job_code  
                    join LOCATION l on d.LOCATION_ID = l.local_code 
;
--7. 한국이나 일본에서 근무 중인 사원의 사원 명, 부서 명, 지역 명, 국가 명 조회
select emp_name, d.DEPT_TITLE, l.LOCAL_NAME, n.NATIONAL_NAME
    from employee e join DEPARTMENT d on e.dept_code = d.DEPT_ID
                    join LOCATION l on d.LOCATION_ID = l.local_code 
                    join NATIONAL n on l.NATIONAL_CODE = n.NATIONAL_CODE
    where n.NATIONAL_NAME in('한국','일본')
;
--8. 한 사원과 같은 부서에서 일하는 사원의 이름 조회
select e.emp_name, e.DEPT_CODE, m.emp_name
    from employee e join employee m
    on e.DEPT_CODE = m.DEPT_CODE
    where e.emp_name != m.emp_name
    order by 1
;
--cross join 사용
select e.emp_name, e.DEPT_CODE, m.emp_name
    from employee e cross join employee m
    where e.dept_code = m.dept_code and e.emp_name != m.emp_name
    order by e.emp_name
;
--9. 보너스가 없고 직급 코드가 J4이거나 J7인 사원의 이름, 직급 명, 급여 조회(NVL 이용)
select emp_name, j.JOB_NAME, salary*(1+nvl(bonus, 0)) 급여
    from employee e join job j
    on e.job_code = j.job_code
    where e.bonus is null and e.job_code in('J4','J7')
;
--10. 보너스 포함한 연봉이 높은 5명의 사번, 이름, 부서 명, 직급, 입사일, 순위 조회
select emp_id, emp_name,  DEPT_TITLE, JOB_NAME, hire_date, rownum from(
select emp_id, emp_name, d.DEPT_TITLE, j.JOB_NAME , hire_date, salary*(1+nvl(bonus,0))*12 연봉
    from employee e join DEPARTMENT d on e.DEPT_CODE = d.DEPT_ID
                    join job j on e.job_code = j.JOB_CODE
    order by 연봉 desc)
    where rownum <= 5
;
--11. 부서 별 급여 합계가 전체 급여 총 합의 20%보다 많은 부서의 부서 명, 부서 별 급여 합계 조회
-- with사용
with sum_tab as(
    select (select dept_title from department where e.dept_code = dept_id) 부서명, sum(salary) 총급여
            from employee e
            group by dept_code
)
select * from sum_tab where 총급여 > (select sum(salary)*0.2 부총합 from employee);
-- 인라인뷰 사용
select d.dept_title , sum(m.salary) 부서별급여
                from employee m ,department d,(select sum(salary)*0.2 부총합 from employee ) s
                where m.dept_code = d.DEPT_ID
                group by d.dept_title, s.부총합
                having sum(m.salary) > s.부총합
;  
-- join을 안쓰고 인라인뷰로 join효과
select 부서명, 총급여
    from (select (select dept_title from department where e.dept_code = dept_id) 부서명, sum(salary) 총급여
            from employee e
            group by dept_code)
    where 총급여 > (select sum(salary) from employee)*0.2
;
--join, having 사용
select d.dept_title , sum(m.salary) 부서별급여
                from employee m 
                join department d on m.dept_code = d.DEPT_ID
                group by d.dept_title
                having sum(m.salary) > (select sum(salary)*0.2 from employee)
;

--12. 부서 명과 부서 별 급여 합계 조회
select d.dept_title , sum(salary) 부서별급여
                from employee e left join department d
                on e.dept_code = d.DEPT_ID
                group by d.dept_title
;

--13. WITH를 이용하여 급여 합과 급여 평균 조회
with sum_avg_sal as (
    select sum(salary), avg(salary)
        from employee)
select * from sum_avg_sal
;  
--union 사용
with sum_sal as(select sum(salary) from employee)
, avg_sal(select avg(salary) from employee) 
select * from sum_sal
union
select * from avg_sal;


------------------------------------------------

select tab_1.*,rownum from(
SELECT EMP_NAME, SALARY,
ROUND(CUME_DIST() OVER (ORDER BY SALARY), 1) 누적분산
FROM EMPLOYEE) tab_1
; 
select tab_2.* , ROUND(CUME_DIST() OVER (ORDER BY SALARY), 1) 누적분산
    from(
select tab_1.*, rownum 순위
    from(select emp_name, salary from employee order by salary) tab_1) tab_2
    where 순위 <= 10
;
drop table test001;
create table test001(no number(10));
insert into test001 values (10);
insert into test001 values (20);
insert into test001 values (30);
insert into test001 values (45);
insert into test001 values (50);
insert into test001 values (60);
insert into test001 values (70);
insert into test001 values (80);
insert into test001 values (90);
insert into test001 values (100);
commit;
select * from test001;
select no,round(CUME_DIST() OVER (ORDER BY no ),2) from test001;
