--1
select e.*, s.grade
    from emp e join SALGRADE s
    on e.sal between s.LOSAL and s.HISAL
;   
--2
select e.*, s.grade
    from emp e join SALGRADE s
    on e.sal between s.LOSAL and s.HISAL
    where s.grade <= 4 and deptno != 10
    order by s.grade desc
;  
--3
select s.grade, avg(sal*12+nvl(comm,0)) 평균연봉
    from emp e join SALGRADE s
    on e.sal between s.LOSAL and s.HISAL
    where deptno in (20,30)
    group by s.grade
    order by 평균연봉 desc
; 
--4
select deptno, floor(avg(sal*12+nvl(comm,0))) 평균연봉
    from emp 
    where deptno in (20,30)
    group by deptno
    order by 평균연봉 desc
; 
--5
select empno, ename, job, mgr,
            (select ename from emp s where empno in (e.mgr)) manager
    from emp e
;
--6
select empno, ename, job, mgr,
            (select ename from emp s where empno = (e.mgr)) manager
    from emp e
    order by mgr
;
--7
select * 
    from emp
    where sal > (select sal from emp where ename = 'MARTIN')
    and deptno in((select deptno from emp where ename = 'ALLEN'), 20)
;
--8
select ename, (select ename from emp where empno = e.mgr) manager
    from emp e join dept d
    on e.deptno = d.deptno
    where d.DNAME = 'RESEARCH'
;
--9
select grade, ename 등급별가장작은급여 
    from emp m join(select s.grade, min(sal) min_sal
                        from emp e join salgrade s
                        on e.sal between s.losal and s.HISAL
                        group by s.grade)
    on m.sal = min_sal
;
--where절에 일반서브쿼리 방법
select grade, ename
        from emp e 
        join salgrade s on e.sal between s.losal and s.HISAL
        where sal in (select min(sal)
                            from emp e1 
                            join salgrade s1 on e1.sal between s1.losal and s1.HISAL
                            group by grade)
;
--where절에 상관쿼리 방법
select grade, ename
        from emp e 
        join salgrade s on e.sal between s.losal and s.HISAL
        where sal = (select min(sal)
                            from emp e1 
                            join salgrade s1 on e1.sal between s1.losal and s1.HISAL
                            where s1.grade = s.grade)
;
--10
select s.grade, min(sal) min_sal, max(sal) max_sal, round(avg(sal), 2) avg_sal
    from emp e join salgrade s
    on e.sal between s.losal and s.HISAL
    group by s.grade
;
--11
select grade, m.ename 
from emp m join (select grade , avg(e.sal) a_sal
                    from emp e join salgrade s
                    on e.sal between s.losal and s.hisal
                    group by grade
                    order by grade)
         on sal between a_sal*0.9 and a_sal*1.1
;
--12
select empno, ename, sal, 
            case when loc = 'NEW YORK' then sal*1.02 
                 when loc = 'DALLAS' then sal*1.05
                 when loc = 'CHICAGO' then sal*1.03
                 when loc = 'BOSTON' then sal*1.07
                 else sal end 추가지원금
--decode버전     decode(loc, 'NEW YORK',sal*1.02,'DALLAS',sal*1.05,'CHICAGO',sal*1.03,'BOSTON',sal*1.07,sal) 추가지원금
    from emp e join dept d
    on e.deptno = d.deptno
    order by 추가지원금-sal desc
;
--12번 join 서브쿼리 버전
select empno, m.ename, sal, sal+지원금 총급여
    from emp m join(select ename, case when loc = 'NEW YORK' then sal*0.02 
                             when loc = 'DALLAS' then sal*0.05
                             when loc = 'CHICAGO' then sal*0.03
                             when loc = 'BOSTON' then sal*0.07
                             else 0 end 지원금
                    from emp e 
                    join dept d using(deptno)) t on m.ename = t.ename
    order by 지원금 desc
;