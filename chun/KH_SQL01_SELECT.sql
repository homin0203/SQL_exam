--1.
select DEPARTMENT_NAME "학과 명", CATEGORY 계열
    from TB_DEPARTMENT
;
--2
select DEPARTMENT_NAME||'의 정원은 '||to_char(CAPACITY)||'명 입니다'
    from TB_DEPARTMENT
;
--3
select STUDENT_NAME
    from TB_STUDENT
    where ABSENCE_YN = 'Y' 
        and STUDENT_SSN LIKE '_______2%'
--        and substr(STUDENT_SSN,8,1) = '2'
        and DEPARTMENT_NO = (select DEPARTMENT_NO
                                from TB_DEPARTMENT
                                where DEPARTMENT_NAME = '국어국문학과')
;
--4
select student_name 
    from TB_STUDENT
    where STUDENT_NO in ('A513079','A513090','A513091','A513110','A513119')
    order by student_name desc
;
--5
select DEPARTMENT_NAME, category
    from TB_DEPARTMENT
    where CAPACITY >= 20 and CAPACITY <= 30
--    where CAPACITY between 19 and 31
;
--6
select PROFESSOR_NAME
    from TB_PROFESSOR
    where DEPARTMENT_NO is null
;
--7
select STUDENT_NAME
    from TB_STUDENT
    where DEPARTMENT_NO is null 
    or DEPARTMENT_NO not in (select DEPARTMENT_NO from TB_DEPARTMENT)
;
--8
select CLASS_NO
    from TB_CLASS
    where PREATTENDING_CLASS_NO is not null
;
--9
select CATEGORY
    from TB_DEPARTMENT
    group by CATEGORY
    order by CATEGORY 
;
--10
select STUDENT_NO,STUDENT_NAME,STUDENT_SSN
    from TB_STUDENT
    where STUDENT_NO LIKE 'A2%'
        and STUDENT_ADDRESS LIKE '전주시%'
        and ABSENCE_YN <> 'Y'
;
