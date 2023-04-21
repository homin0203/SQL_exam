--1
select STUDENT_NAME "학생 이름",STUDENT_ADDRESS 주소지
    from tb_student
    order by "학생 이름"
;
--2
select STUDENT_NAME,STUDENT_SSN
    from TB_STUDENT
    where ABSENCE_YN = 'Y'
    order by STUDENT_ssn desc
;
--3
select STUDENT_NAME 학생이름, STUDENT_NO 학번, STUDENT_ADDRESS "거주지 주소"
    from TB_STUDENT
    where (STUDENT_ADDRESS Like '강원도%' or STUDENT_ADDRESS Like '경기도%') and STUDENT_no not LIKE 'A%'
    order by STUDENT_NAME
;
--4
select PROFESSOR_NAME, PROFESSOR_SSN
    from TB_PROFESSOR 
    where DEPARTMENT_NO = '005'
    order by PROFESSOR_SSN
;
--5
select s.student_no, g.point
    from TB_STUDENT s join tb_grade g on s.STUDENT_NO = g.STUDENT_NO
    where g.CLASS_NO = 'C3118100' and g.TERM_NO = '200402'
    order by g.point desc, s.STUDENT_NO
;
--6
select s.STUDENT_NO, s.STUDENT_NAME, d.DEPARTMENT_NAME
    from TB_STUDENT s join TB_DEPARTMENT d using(DEPARTMENT_NO)
    order by 2
;
--7
select c.CLASS_NAME, d.DEPARTMENT_NAME
    from TB_CLASS c join TB_DEPARTMENT d using(DEPARTMENT_NO)
;
--8
select c.CLASS_NAME, c.DEPARTMENT_NO, p.PROFESSOR_NAME
    from TB_CLASS c join TB_CLASS_PROFESSOR t on c.CLASS_NO = t.CLASS_NO
                    join TB_PROFESSOR p on p.PROFESSOR_NO = t.PROFESSOR_NO
    order by c.DEPARTMENT_NO, p.PROFESSOR_NO, c.CLASS_NAME
;
--9
select c.CLASS_NAME, p.PROFESSOR_NAME
    from TB_CLASS c join TB_CLASS_PROFESSOR t on c.CLASS_NO = t.CLASS_NO
                    join TB_PROFESSOR p on p.PROFESSOR_NO = t.PROFESSOR_NO
                    join TB_DEPARTMENT d on c.DEPARTMENT_NO = d.DEPARTMENT_NO
    where d.CATEGORY = '인문사회'
    order by c.DEPARTMENT_NO, p.PROFESSOR_NO, c.CLASS_NAME
;
--10
select s.STUDENT_NO,s.STUDENT_NAME, round(avg(g.POINT),1)
    from TB_STUDENT s join TB_DEPARTMENT d on s.DEPARTMENT_NO = d.DEPARTMENT_NO
                    join TB_GRADE g on s.STUDENT_NO = g.STUDENT_NO
    where d.DEPARTMENT_NAME = '음악학과'
    group by s.STUDENT_NO, s.STUDENT_NAME
    order by s.STUDENT_NO
;
--11
select d.DEPARTMENT_NAME, s.STUDENT_NAME, p.PROFESSOR_NAME
    from TB_STUDENT s join TB_DEPARTMENT d using(DEPARTMENT_NO)
                        join TB_PROFESSOR p on s.COACH_PROFESSOR_NO = p.PROFESSOR_NO
    where s.STUDENT_NO = 'A313047'
;
--12
select s.STUDENT_NAME, g.TERM_NO
    from TB_CLASS c join TB_GRADE g on c.CLASS_NO = g.class_no
                    join TB_STUDENT s on s.STUDENT_NO = g.STUDENT_NO
    where c.CLASS_NAME = '인간관계론' and g.TERM_NO LIKE '2007%'
;
--13
select c.CLASS_NAME, d.DEPARTMENT_NAME
    from TB_DEPARTMENT d join TB_CLASS c using(DEPARTMENT_NO)
    where d.CATEGORY = '예체능'
        and c.CLASS_NO not in (select cp.CLASS_NO from TB_CLASS_PROFESSOR cp)
    order by 2 asc,1
;
--14
select s.student_name, NVL(p.PROFESSOR_NAME,'지도교수 미지정')
    from TB_STUDENT s join TB_DEPARTMENT d using(DEPARTMENT_NO)
                        left join TB_PROFESSOR p on s.coach_professor_no = p.professor_no
    where d.DEPARTMENT_NAME = '서반아어학과' 
    order by s.student_no
;
--15
select s.STUDENT_NO 학번,s.student_name 이름,d.DEPARTMENT_NAME "학과 이름", round(avg(g.point),8) 평점
    from tb_student s join tb_grade g on s.STUDENT_NO = g.STUDENT_NO 
                        join TB_DEPARTMENT d on s.DEPARTMENT_NO = d.DEPARTMENT_NO
    where s.ABSENCE_YN = 'N'
    group by s.STUDENT_NO, s.student_name, d.DEPARTMENT_NAME
    having avg(g.point) >= 4.0
    order by s.STUDENT_NO
;
--16
select c.CLASS_NO, c.CLASS_NAME, round(avg(g.point),8)
    from tb_class c join TB_DEPARTMENT d on d.DEPARTMENT_NO = c.DEPARTMENT_NO
                            join tb_grade g on c.CLASS_NO = g.CLASS_NO
    where d.DEPARTMENT_NAME = '환경조경학과' and c.CLASS_TYPE = '전공선택'
    group by c.CLASS_NO, c.CLASS_NAME
    order by 1
;
--17
select STUDENT_NAME,STUDENT_ADDRESS
    from TB_STUDENT
    where DEPARTMENT_NO = (select DEPARTMENT_NO from TB_STUDENT where STUDENT_NAME = '최경희')
;
--18
select student_no, student_name
    from(select s.STUDENT_NO, s.STUDENT_NAME, avg(g.POINT) 평점
                    from TB_STUDENT s join tb_grade g on s.STUDENT_NO = g.STUDENT_NO
                                        join TB_DEPARTMENT d using(DEPARTMENT_NO)
                    where d.DEPARTMENT_NAME = '국어국문학과'
                    group by s.STUDENT_NO, s.STUDENT_NAME
                    order by 3 desc)
    where rownum = 1
;
--19
select d.DEPARTMENT_NAME "계열 학과명", round(avg(g.POINT),1) "전공평점"
    from TB_DEPARTMENT d join TB_CLASS c using(department_no)
                        join tb_grade g using(class_no)
    where d.category = (select CATEGORY from TB_DEPARTMENT  where DEPARTMENT_NAME = '환경조경학과')
            and c.class_type = '전공선택'
    group by d.DEPARTMENT_NAME
    order by 1
;
