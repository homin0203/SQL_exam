--1
select STUDENT_NO 학번, student_name 이름, to_char(ENTRANCE_DATE, 'YYYY-MM-DD') 입학년도
    from TB_STUDENT
    where DEPARTMENT_NO = '002'
    order by ENTRANCE_DATE
;
--2
select PROFESSOR_NAME,PROFESSOR_SSN
    from TB_PROFESSOR
    where PROFESSOR_NAME not LIKE '___'
;
--3
select * 
    from(select PROFESSOR_NAME 교수이름, to_char(sysdate,'yy')+100-substr(PROFESSOR_SSN,1,2) 나이
            from TB_PROFESSOR
            where substr(PROFESSOR_SSN,8,1) = '1')
    order by 나이
;  
--4
select substr(PROFESSOR_NAME,2)
    from TB_PROFESSOR
;
--5
select * from TB_STUDENT;
select student_no,STUDENT_NAME
    from TB_STUDENT
--    where (to_char(ENTRANCE_DATE,'yyyy')-LPAD(substr(STUDENT_SSN,1,2),4,'19')) > 19
    where (to_char(ENTRANCE_DATE,'yyyy')-to_char(to_date(substr(STUDENT_SSN,1,6)),'RRRR')) > 19
;
--6
select case to_char(next_day('2020/12/25','일'),'dd')-'25' 
            when 1 then '토요일'
            when 2 then '금요일'
            when 3 then '목요일'
            when 4 then '수요일'
            when 5 then '화요일'
            when 6 then '월요일'
            when 7 then '일요일'
            else '없음' end 클스요일
from dual
;
--7
select to_char(to_Date('99/10/11','YY/MM/DD'),'YYYY"년"MM"월"DD"일"')
        ,to_char(to_Date('49/10/11','YY/MM/DD'),'YYYY"년"MM"월"DD"일"') 
    from dual
union
select to_char(to_Date('99/10/11','RR/MM/DD'),'YYYY"년"MM"월"DD"일"')
        ,to_char(to_Date('49/10/11','RR/MM/DD'),'YYYY"년"MM"월"DD"일"') 
    from dual;
--8
select STUDENT_NO, STUDENT_NAME 
    from TB_STUDENT
    where student_no not LIKE 'A%'
;
--9
select round(avg(g.POINT),1) 평점
    from TB_STUDENT s join tb_grade g using (STUDENT_NO)
    where STUDENT_NAME = '한아름'
;
--10
select DEPARTMENT_NO 학과번호, count(DEPARTMENT_NO) "학생수(명)"
    from TB_STUDENT
    group by DEPARTMENT_NO
    order by DEPARTMENT_NO
;
--11
select  count(*)
    from TB_STUDENT
    where COACH_PROFESSOR_NO is null
;
--12
select substr(g.TERM_NO,1,4) 년도, round(avg(g.POINT),1) "년도 별 평점"
    from TB_STUDENT s join tb_grade g on s.STUDENT_NO = g.STUDENT_NO
    where s.STUDENT_NO = 'A112113'
    group by substr(g.TERM_NO,1,4)
    order by substr(g.TERM_NO,1,4)
;
--13
--select d.DEPARTMENT_NO 학과코드명, count(*)
--    from TB_STUDENT s right join TB_DEPARTMENT d on s.DEPARTMENT_NO = d.DEPARTMENT_NO
--    where s.ABSENCE_YN = 'Y'
--    group by d.DEPARTMENT_NO
--    order by d.DEPARTMENT_NO
--;
select d.DEPARTMENT_NO 학과코드명, count(s_tab.ABSENCE_YN) "휴학생 수"
    from TB_DEPARTMENT d 
    left join (select * from TB_STUDENT s where s.ABSENCE_YN = 'Y') s_tab on s_tab.DEPARTMENT_NO = d.DEPARTMENT_NO
    group by d.DEPARTMENT_NO
    order by d.DEPARTMENT_NO
;
--14
select student_name, count(*)
    from TB_STUDENT
    group by STUDENT_NAME
    having count(*) >= 2
    order by STUDENT_NAME
;
--15
select NVL(임시년도,' ') 년도, NVL(임시학기,' ') 학기, 평점
    from(select substr(g.TERM_NO,1,4) 임시년도, substr(g.TERM_NO,5,2) 임시학기, round(avg(g.point),1) 평점
            from TB_STUDENT s join tb_grade g on s.STUDENT_NO = g.STUDENT_NO
            where s.STUDENT_NO = 'A112113'
            group by rollup(substr(g.TERM_NO,1,4), substr(g.TERM_NO,5,2)))
;


----------------- 강사님이 복사해준 것
--select t1.*
--            , to_date(substr(PROFESSOR_SSN,1,6), 'rrmmdd') a
--            , case 
--                when substr(PROFESSOR_SSN,1,2) > to_char(sysdate,'yy')
--                    then to_date(19||substr(PROFESSOR_SSN,1,6), 'yyyymmdd')
--                else to_date(substr(PROFESSOR_SSN,1,6), 'yymmdd')
--            end birthday
