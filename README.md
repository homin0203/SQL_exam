# 데이터 베이스

- 데이터 베이스 교육과목 ORACLE SQL문 과제 기록 

<br>

## 춘대학교

<!-- <details>
<summary><h3> 템플릿(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">


  
  
</div>
</details> -->

[→ DDL & DML SQL문 보기](https://github.com/homin0203/SQL_exam/blob/main/chun/%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8_KH_%EC%B6%98_TechUniv_%EC%8B%A4%EC%8A%B5.sql)  

<details>
<summary><h3>✅ 테이블 기술서(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">

![05_실습_KH_춘_TechUniv_Table기술서_2](https://user-images.githubusercontent.com/116356234/233554045-1fa54263-1ac4-4f3d-836b-1c4597a9f56d.png)

![05_실습_KH_춘_TechUniv_Table기술서_3](https://user-images.githubusercontent.com/116356234/233554049-31a43883-e603-4c8b-a50c-46fc1f8329df.png)

</div>
</details>

<details>
<summary><h3>1️⃣ SELECT_Basic(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">
 
[→ SELECT_Basic SQL문 전체보기](https://github.com/homin0203/SQL_exam/blob/main/chun/KH_SQL01_SELECT.sql)  

#### 문제1
![1](https://user-images.githubusercontent.com/116356234/233560082-94db668d-fe43-4de7-a982-88cdf106e753.png)

#### 내 코드
```SQL
select DEPARTMENT_NAME "학과 명", CATEGORY 계열
  from TB_DEPARTMENT
;
```

#### 실행 결과
![1](https://user-images.githubusercontent.com/116356234/233562971-83cfe5ce-ef7c-4a32-88d1-7cc3e3538079.png)
~ 이후 행 생략
  
<hr>

#### 문제2
![2](https://user-images.githubusercontent.com/116356234/233560087-0e4ea461-1266-4f49-9741-495f0e72ad29.png)

#### 내 코드
```SQL
select DEPARTMENT_NAME||'의 정원은 '||to_char(CAPACITY)||'명 입니다'
    from TB_DEPARTMENT
;
```
  
#### 실행 결과
![2](https://user-images.githubusercontent.com/116356234/233562975-408068bc-0517-45f1-9380-991261ab9249.png)
~ 이후 행 생략 
  
<hr>

#### 문제3
![3](https://user-images.githubusercontent.com/116356234/233560088-51a38f75-d3fb-488d-a62e-54c93c846fce.png)

#### 내 코드
```SQL
select STUDENT_NAME
    from TB_STUDENT
    where ABSENCE_YN = 'Y' 
        and STUDENT_SSN LIKE '_______2%'
        and DEPARTMENT_NO = (select DEPARTMENT_NO
                                from TB_DEPARTMENT
                                where DEPARTMENT_NAME = '국어국문학과')
;
```

#### 실행 결과
![3](https://user-images.githubusercontent.com/116356234/233562978-588abdc4-420a-4ff2-8423-891350405fc8.png)

<hr>

#### 문제4
![4](https://user-images.githubusercontent.com/116356234/233560092-a5b3d63d-62f1-4093-a420-59cb1e1441a2.png)

#### 내 코드
```SQL
select student_name 
    from TB_STUDENT
    where STUDENT_NO in ('A513079','A513090','A513091','A513110','A513119')
    order by student_name desc
;
```

#### 실행 결과
![4](https://user-images.githubusercontent.com/116356234/233562981-f33ae9d1-718e-4e05-b67b-6806082fc591.png)

<hr>

#### 문제5
![5](https://user-images.githubusercontent.com/116356234/233560094-b3cd8184-a6ff-43ca-b434-36677f38bd24.png)

#### 내 코드
```SQL
select DEPARTMENT_NAME, category
    from TB_DEPARTMENT
    where CAPACITY >= 20 and CAPACITY <= 30
;
```

#### 실행 결과
![5](https://user-images.githubusercontent.com/116356234/233562982-304fb39e-aeb5-4c1d-a4b0-736484035ed7.png)

<hr>

#### 문제6
![6](https://user-images.githubusercontent.com/116356234/233560097-8047da8d-5601-43b2-988b-06aace2724e5.png)

#### 내 코드
```SQL
select PROFESSOR_NAME
    from TB_PROFESSOR
    where DEPARTMENT_NO is null
;
```

#### 실행 결과
![6](https://user-images.githubusercontent.com/116356234/233562986-f80a032f-789f-4ab3-90aa-5e55fb79c2a0.png)

<hr>

#### 문제7

<img src="https://user-images.githubusercontent.com/116356234/233560100-687c51e1-412f-400f-8c26-430558a3fa9b.png" height="110">

#### 내 코드
```SQL
select STUDENT_NAME
    from TB_STUDENT
    where DEPARTMENT_NO is null 
    or DEPARTMENT_NO not in (select DEPARTMENT_NO from TB_DEPARTMENT)
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233562987-9952b3df-f0c4-40c9-86a8-341b70ee6ee3.png" height="90">

<hr>

#### 문제8
![8](https://user-images.githubusercontent.com/116356234/233560102-5c8edb8b-5a6a-41a9-8955-2dfc8964fed7.png)

#### 내 코드
```SQL
select CLASS_NO
    from TB_CLASS
    where PREATTENDING_CLASS_NO is not null
;
```

#### 실행 결과
![8](https://user-images.githubusercontent.com/116356234/233562989-8534fb54-6f53-4dd5-9ae3-1e2aa246db5f.png)

<hr>

#### 문제9
![9](https://user-images.githubusercontent.com/116356234/233560103-84064952-f629-4f2b-854e-6160971413f7.png)

#### 내 코드
```SQL
select CATEGORY
    from TB_DEPARTMENT
    group by CATEGORY
    order by CATEGORY 
;
```

#### 실행 결과
![9](https://user-images.githubusercontent.com/116356234/233562990-efb736c3-cf6f-4462-bec3-314c4d30fad3.png)

<hr>

#### 문제10
![10](https://user-images.githubusercontent.com/116356234/233560107-23ac3ae8-0622-46c3-bab5-d5d5e164ed40.png)

#### 내 코드
```SQL
select STUDENT_NO,STUDENT_NAME,STUDENT_SSN
    from TB_STUDENT
    where STUDENT_NO LIKE 'A2%'
        and STUDENT_ADDRESS LIKE '전주시%'
        and ABSENCE_YN <> 'Y'
;
```

#### 실행 결과
![10](https://user-images.githubusercontent.com/116356234/233562992-768a2b93-eadc-4bc2-99ac-346f01e38105.png)
  
</div>
</details>

<details>
<summary><h3>2️⃣ SELECT_Function(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">
  
[→ SELECT_Function SQL문 전체보기](https://github.com/homin0203/SQL_exam/blob/main/chun/KH_SQL02_SELECT.sql)  
  
#### 문제1
![1](https://user-images.githubusercontent.com/116356234/233565412-3a02c16a-9f7c-42ec-82a4-fcf0533212f8.png)

#### 내 코드
```SQL
select STUDENT_NO 학번, student_name 이름, to_char(ENTRANCE_DATE, 'YYYY-MM-DD') 입학년도
    from TB_STUDENT
    where DEPARTMENT_NO = '002'
    order by ENTRANCE_DATE
;
```

#### 실행 결과
![1](https://user-images.githubusercontent.com/116356234/233568511-ee7950d5-e4c7-40b6-9fb5-e9e8a1340ca1.png)

  
<hr>

#### 문제2
![2](https://user-images.githubusercontent.com/116356234/233565417-96a4dcfe-17a8-4aad-ad1b-7faddd468f3c.png)


#### 내 코드
```SQL
select PROFESSOR_NAME,PROFESSOR_SSN
    from TB_PROFESSOR
    where PROFESSOR_NAME not LIKE '___'
;
```
  
#### 실행 결과
![2](https://user-images.githubusercontent.com/116356234/233568518-1cd68b40-b5db-4d5f-b798-0e2ab2c154eb.png)


<hr>

#### 문제3
![3](https://user-images.githubusercontent.com/116356234/233565420-b3a8b5ba-d5d1-4d55-bee5-9cea426cac93.png)


#### 내 코드
```SQL
select * 
    from(select PROFESSOR_NAME 교수이름, to_char(sysdate,'yy')+100-substr(PROFESSOR_SSN,1,2) 나이
            from TB_PROFESSOR
            where substr(PROFESSOR_SSN,8,1) = '1')
    order by 나이
;  
```

#### 실행 결과
![3](https://user-images.githubusercontent.com/116356234/233568521-b41c25ed-7025-4228-8c71-80a45a565028.png)
~ 75행 생략

<hr>

#### 문제4
![4](https://user-images.githubusercontent.com/116356234/233565421-1336746f-8d7c-4d6a-ae85-b90dd639e3e2.png)


#### 내 코드
```SQL
select substr(PROFESSOR_NAME,2)
    from TB_PROFESSOR
;
```

#### 실행 결과
![4](https://user-images.githubusercontent.com/116356234/233568523-45166986-b29c-452d-aa05-8dbf77bfa6a4.png)
~ 114행 생략

<hr>

#### 문제5
![5](https://user-images.githubusercontent.com/116356234/233565425-c0b793d3-13c6-4a15-8865-7aad0e04e8fe.png)

#### 내 코드
```SQL
select * from TB_STUDENT;
select student_no,STUDENT_NAME
    from TB_STUDENT
    where (to_char(ENTRANCE_DATE,'yyyy')-to_char(to_date(substr(STUDENT_SSN,1,6)),'RRRR')) > 19
;
```

#### 실행 결과
![5](https://user-images.githubusercontent.com/116356234/233568528-cfe24763-6cbe-417c-9d6b-a1b7eaa2b459.png)
~ 204행 생략

<hr>

#### 문제6
![6](https://user-images.githubusercontent.com/116356234/233565427-16edaaab-21f5-4b54-9737-298358f701ea.png)


#### 내 코드
```SQL
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
```

#### 실행 결과
![6](https://user-images.githubusercontent.com/116356234/233568533-e1687389-39b9-490b-8df9-c820c210b22b.png)


<hr>

#### 문제7
![7](https://user-images.githubusercontent.com/116356234/233565431-7801e875-2848-490c-b3bc-a91150912c72.png)


#### 내 코드
```SQL
select to_char(to_Date('99/10/11','YY/MM/DD'),'YYYY"년"MM"월"DD"일"')
        ,to_char(to_Date('49/10/11','YY/MM/DD'),'YYYY"년"MM"월"DD"일"') 
    from dual
union
select to_char(to_Date('99/10/11','RR/MM/DD'),'YYYY"년"MM"월"DD"일"')
        ,to_char(to_Date('49/10/11','RR/MM/DD'),'YYYY"년"MM"월"DD"일"') 
    from dual;
```

#### 실행 결과
![7](https://user-images.githubusercontent.com/116356234/233568538-a5612627-7618-4396-8bdf-f66f8d059e90.png)


<hr>

#### 문제8
![8](https://user-images.githubusercontent.com/116356234/233565432-0094041d-f2ad-480c-917b-de475215a98b.png)


#### 내 코드
```SQL
select STUDENT_NO, STUDENT_NAME 
    from TB_STUDENT
    where student_no not LIKE 'A%'
;
```

#### 실행 결과
![8](https://user-images.githubusercontent.com/116356234/233568540-0104c633-2778-4c57-b86c-cf129c4f0791.png)
~ 52행 생략

<hr>

#### 문제9
![9](https://user-images.githubusercontent.com/116356234/233565433-e34688bc-333a-4793-8bfc-9213e9418083.png)


#### 내 코드
```SQL
select round(avg(g.POINT),1) 평점
    from TB_STUDENT s join tb_grade g using (STUDENT_NO)
    where STUDENT_NAME = '한아름'
;
```

#### 실행 결과
![9](https://user-images.githubusercontent.com/116356234/233568542-ad19243b-a72e-40ca-b69e-a17c7b30ff79.png)


<hr>

#### 문제10
![10](https://user-images.githubusercontent.com/116356234/233565436-a1247f3d-e6c6-4a2a-9e45-fd9dcc25d679.png)

#### 내 코드
```SQL
select DEPARTMENT_NO 학과번호, count(DEPARTMENT_NO) "학생수(명)"
    from TB_STUDENT
    group by DEPARTMENT_NO
    order by DEPARTMENT_NO
;
```

#### 실행 결과
![10](https://user-images.githubusercontent.com/116356234/233568544-d26d6d5a-e067-4508-96d2-ea5f77ca0058.png)
~ 62행 생략
  
<hr>

#### 문제11
![11](https://user-images.githubusercontent.com/116356234/233565438-4c316eaf-b9bb-418b-8b82-290c94dbfb22.png)

#### 내 코드
```SQL
select  count(*)
    from TB_STUDENT
    where COACH_PROFESSOR_NO is null
;
```

#### 실행 결과
![11](https://user-images.githubusercontent.com/116356234/233568546-dc741292-b8b7-4b3f-a52f-4765341c1db6.png)
  
<hr>

#### 문제12
![12](https://user-images.githubusercontent.com/116356234/233565440-a63eda50-371b-4f9d-8d26-b5df24b8989c.png)

#### 내 코드
```SQL
select substr(g.TERM_NO,1,4) 년도, round(avg(g.POINT),1) "년도 별 평점"
    from TB_STUDENT s join tb_grade g on s.STUDENT_NO = g.STUDENT_NO
    where s.STUDENT_NO = 'A112113'
    group by substr(g.TERM_NO,1,4)
    order by substr(g.TERM_NO,1,4)
;
```

#### 실행 결과
![12](https://user-images.githubusercontent.com/116356234/233568549-6e7460a6-6978-4aef-b76d-b1f98a086ee2.png)

<hr>

#### 문제13
![13](https://user-images.githubusercontent.com/116356234/233565443-a9740c1e-e20d-42bc-aec0-4f4a7b6045b8.png)

#### 내 코드
```SQL
select d.DEPARTMENT_NO 학과코드명, count(s_tab.ABSENCE_YN) "휴학생 수"
    from TB_DEPARTMENT d 
    left join (select * from TB_STUDENT s where s.ABSENCE_YN = 'Y') s_tab on s_tab.DEPARTMENT_NO = d.DEPARTMENT_NO
    group by d.DEPARTMENT_NO
    order by d.DEPARTMENT_NO
;
```

#### 실행 결과
![13](https://user-images.githubusercontent.com/116356234/233568551-d035959d-3595-4637-ab11-ff285480207f.png)
~ 63행 생략

<hr>

#### 문제14
![14](https://user-images.githubusercontent.com/116356234/233565446-6045680b-b784-43bb-ba4b-beed8b5b1bdd.png)

#### 내 코드
```SQL
select student_name, count(*)
    from TB_STUDENT
    group by STUDENT_NAME
    having count(*) >= 2
    order by STUDENT_NAME
;
```

#### 실행 결과
![14](https://user-images.githubusercontent.com/116356234/233568556-fe41dd8a-7437-4313-a077-0e42b02e3ffd.png)
    
<hr>

#### 문제15
![15](https://user-images.githubusercontent.com/116356234/233565448-7a5a7716-b399-4d21-8fb0-08d1beadf942.png)

#### 내 코드
```SQL
select NVL(임시년도,' ') 년도, NVL(임시학기,' ') 학기, 평점
    from(select substr(g.TERM_NO,1,4) 임시년도, substr(g.TERM_NO,5,2) 임시학기, round(avg(g.point),1) 평점
            from TB_STUDENT s join tb_grade g on s.STUDENT_NO = g.STUDENT_NO
            where s.STUDENT_NO = 'A112113'
            group by rollup(substr(g.TERM_NO,1,4), substr(g.TERM_NO,5,2)))
;
```

#### 실행 결과
![15](https://user-images.githubusercontent.com/116356234/233568559-73e1d6b5-e9cd-4a17-b891-0b98ea538daa.png)      
  
</div>
</details>

<details>
<summary><h3>3️⃣ SELECT_Option(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">

[→ SELECT_Option SQL문 전체보기](https://github.com/homin0203/SQL_exam/blob/main/chun/KH_SQL03_SELECT.sql)  
  
#### 문제1
![1](https://user-images.githubusercontent.com/116356234/233768278-3a7dd42a-9d24-4d9d-b3a3-485c6fca6b62.png)


#### 내 코드
```SQL
select STUDENT_NAME "학생 이름",STUDENT_ADDRESS 주소지
    from tb_student
    order by "학생 이름"
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768958-f9ad2349-a466-4931-bb34-c0a3f7bb7828.png" width="450">  
~ 588행 생략
  
<hr>

#### 문제2
![2](https://user-images.githubusercontent.com/116356234/233768281-107421ff-c6dc-42b1-bc85-8ffc66eb34ca.png)


#### 내 코드
```SQL
select STUDENT_NAME,STUDENT_SSN
    from TB_STUDENT
    where ABSENCE_YN = 'Y'
    order by STUDENT_ssn desc
;  
```
  
#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768959-95b6979f-03e3-484a-aca5-61115ec81c68.png" width="300">  
~ 91행 생략

<hr>

#### 문제3
![3](https://user-images.githubusercontent.com/116356234/233768282-1cd06b70-8b30-492b-ba59-80dfb5efed32.png)


#### 내 코드
```SQL
select STUDENT_NAME 학생이름, STUDENT_NO 학번, STUDENT_ADDRESS "거주지 주소"
    from TB_STUDENT
    where (STUDENT_ADDRESS Like '강원도%' or STUDENT_ADDRESS Like '경기도%') and STUDENT_no not LIKE 'A%'
    order by STUDENT_NAME
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768960-3d33e14b-f7fb-4981-9052-bb66a62f57b2.png" width="450">  


<hr>

#### 문제4
![4](https://user-images.githubusercontent.com/116356234/233768284-0d8944dd-1820-42de-9cec-98d3d8816ee5.png)


#### 내 코드
```SQL
select PROFESSOR_NAME, PROFESSOR_SSN
    from TB_PROFESSOR 
    where DEPARTMENT_NO = '005'
    order by PROFESSOR_SSN
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768962-82e55e12-0721-416f-a461-e8b318ef4f1c.png" width="350">  


<hr>

#### 문제5
![5](https://user-images.githubusercontent.com/116356234/233768285-5bdd4980-307f-4acd-836e-22cfde6b7d05.png)


#### 내 코드
```SQL
select s.student_no, g.point
    from TB_STUDENT s join tb_grade g on s.STUDENT_NO = g.STUDENT_NO
    where g.CLASS_NO = 'C3118100' and g.TERM_NO = '200402'
    order by g.point desc, s.STUDENT_NO
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768963-a07c8663-d044-42b3-8dd6-f74f16229af3.png" width="290">  


<hr>

#### 문제6
![6](https://user-images.githubusercontent.com/116356234/233768286-d2118b28-77ab-429d-ab76-50493d50444c.png)


#### 내 코드
```SQL
select s.STUDENT_NO, s.STUDENT_NAME, d.DEPARTMENT_NAME
    from TB_STUDENT s join TB_DEPARTMENT d using(DEPARTMENT_NO)
    order by 2
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768965-8f86c161-f67a-4bee-a24e-752947070bcb.png" width="450">  
~ 588행 생략
  
<hr>

#### 문제7
![7](https://user-images.githubusercontent.com/116356234/233768288-249890c5-b615-44c1-8a8b-80b4b7fcdddf.png)

#### 내 코드
```SQL
select c.CLASS_NAME, d.DEPARTMENT_NAME
    from TB_CLASS c join TB_DEPARTMENT d using(DEPARTMENT_NO)
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768966-ad7de6ae-86c8-406c-b18f-3304dc348449.png" width="450">  
~ 882행 생략

<hr>

#### 문제8
![8](https://user-images.githubusercontent.com/116356234/233768289-8484168e-104f-4a69-bb70-63a09bab65f9.png)

#### 내 코드
```SQL
select c.CLASS_NAME, c.DEPARTMENT_NO, p.PROFESSOR_NAME
    from TB_CLASS c join TB_CLASS_PROFESSOR t on c.CLASS_NO = t.CLASS_NO
                    join TB_PROFESSOR p on p.PROFESSOR_NO = t.PROFESSOR_NO
    order by c.DEPARTMENT_NO, p.PROFESSOR_NO, c.CLASS_NAME
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768967-99a5c4d5-a0f8-4b41-9d53-e2f38ea443bf.png" width="450">  
~ 776행 생략

<hr>

#### 문제9
![9](https://user-images.githubusercontent.com/116356234/233768290-db3378ed-baac-4a0c-90fc-57c68eb803bf.png)


#### 내 코드
```SQL
select c.CLASS_NAME, p.PROFESSOR_NAME
    from TB_CLASS c join TB_CLASS_PROFESSOR t on c.CLASS_NO = t.CLASS_NO
                    join TB_PROFESSOR p on p.PROFESSOR_NO = t.PROFESSOR_NO
                    join TB_DEPARTMENT d on c.DEPARTMENT_NO = d.DEPARTMENT_NO
    where d.CATEGORY = '인문사회'
    order by c.DEPARTMENT_NO, p.PROFESSOR_NO, c.CLASS_NAME
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768968-11600dc2-ca01-4b61-98e6-fe9bc56c8b1a.png" width="450">  
~ 197행 생략

<hr>

#### 문제10
![10](https://user-images.githubusercontent.com/116356234/233768291-d2f1a642-a6ae-4e01-9389-07b6b76c4be0.png)

#### 내 코드
```SQL
select s.STUDENT_NO,s.STUDENT_NAME, round(avg(g.POINT),1)
    from TB_STUDENT s join TB_DEPARTMENT d on s.DEPARTMENT_NO = d.DEPARTMENT_NO
                    join TB_GRADE g on s.STUDENT_NO = g.STUDENT_NO
    where d.DEPARTMENT_NAME = '음악학과'
    group by s.STUDENT_NO, s.STUDENT_NAME
    order by s.STUDENT_NO
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768969-bc8943c8-245d-41d4-81b8-e88bca6ce6da.png" width="450">

<hr>

#### 문제11
![11](https://user-images.githubusercontent.com/116356234/233768292-5ed4af03-efce-4389-ac7b-0d6fbfe5686f.png)

#### 내 코드
```SQL
select d.DEPARTMENT_NAME, s.STUDENT_NAME, p.PROFESSOR_NAME
    from TB_STUDENT s join TB_DEPARTMENT d using(DEPARTMENT_NO)
                        join TB_PROFESSOR p on s.COACH_PROFESSOR_NO = p.PROFESSOR_NO
    where s.STUDENT_NO = 'A313047'
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768970-bbccf685-d333-4456-869f-0b4a3d2135b7.png" width="350">

  
<hr>

#### 문제12
![12](https://user-images.githubusercontent.com/116356234/233768293-b6b94ef1-ec4e-4801-9630-039a1a4ed991.png)

#### 내 코드
```SQL
select s.STUDENT_NAME, g.TERM_NO
    from TB_CLASS c join TB_GRADE g on c.CLASS_NO = g.class_no
                    join TB_STUDENT s on s.STUDENT_NO = g.STUDENT_NO
    where c.CLASS_NAME = '인간관계론' and g.TERM_NO LIKE '2007%'
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768972-3e8996c3-7d33-40b0-b884-dab979b78673.png" width="290">

  
<hr>

#### 문제13
![13](https://user-images.githubusercontent.com/116356234/233768294-ff319fe4-17d6-4e73-9400-f10718bcd67f.png)

#### 내 코드
```SQL
select c.CLASS_NAME, d.DEPARTMENT_NAME
    from TB_DEPARTMENT d join TB_CLASS c using(DEPARTMENT_NO)
    where d.CATEGORY = '예체능'
        and c.CLASS_NO not in (select cp.CLASS_NO from TB_CLASS_PROFESSOR cp)
    order by 2 asc,1
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768973-b23be4e4-5f8e-4b22-afee-dd17ad24536f.png" width="450">
~ 44행 생략
  
<hr>

#### 문제14
![14](https://user-images.githubusercontent.com/116356234/233768295-bd0a8222-ddde-43fe-af92-b61f84b96506.png)

#### 내 코드
```SQL
select s.student_name, NVL(p.PROFESSOR_NAME,'지도교수 미지정')
    from TB_STUDENT s join TB_DEPARTMENT d using(DEPARTMENT_NO)
                        left join TB_PROFESSOR p on s.coach_professor_no = p.professor_no
    where d.DEPARTMENT_NAME = '서반아어학과' 
    order by s.student_no
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768974-b290aba4-2b29-4da9-bcc0-fbafe541e036.png" width="450">

<hr>

#### 문제15
![15](https://user-images.githubusercontent.com/116356234/233768296-f1bc3b02-8337-4d6c-b68c-538974562df7.png)

#### 내 코드
```SQL
select s.STUDENT_NO 학번,s.student_name 이름,d.DEPARTMENT_NAME "학과 이름", round(avg(g.point),8) 평점
    from tb_student s join tb_grade g on s.STUDENT_NO = g.STUDENT_NO 
                        join TB_DEPARTMENT d on s.DEPARTMENT_NO = d.DEPARTMENT_NO
    where s.ABSENCE_YN = 'N'
    group by s.STUDENT_NO, s.student_name, d.DEPARTMENT_NAME
    having avg(g.point) >= 4.0
    order by s.STUDENT_NO
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768975-dc5a585c-224a-45ff-a77f-45c862104403.png" width="450">
~ 19행 생략
  
<hr>

#### 문제16
![16](https://user-images.githubusercontent.com/116356234/233768297-b4959ec0-cdf6-446b-a5d6-1a43f8e4f4cd.png)

#### 내 코드
```SQL
select c.CLASS_NO, c.CLASS_NAME, round(avg(g.point),8)
    from tb_class c join TB_DEPARTMENT d on d.DEPARTMENT_NO = c.DEPARTMENT_NO
                            join tb_grade g on c.CLASS_NO = g.CLASS_NO
    where d.DEPARTMENT_NAME = '환경조경학과' and c.CLASS_TYPE = '전공선택'
    group by c.CLASS_NO, c.CLASS_NAME
    order by 1
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768976-b7ac7335-70cb-45bf-ad6e-fb1a4a0b8af5.png" width="450">
 
<hr>

#### 문제17
![17](https://user-images.githubusercontent.com/116356234/233768298-e9316d35-a1a3-450d-916b-97e3082323b2.png)

#### 내 코드
```SQL
select STUDENT_NAME,STUDENT_ADDRESS
    from TB_STUDENT
    where DEPARTMENT_NO = (select DEPARTMENT_NO from TB_STUDENT where STUDENT_NAME = '최경희')
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768977-ac7fd6a1-218f-4a32-87c0-c3b1b51c21b3.png" width="450">
~ 17행 생략
  
<hr>

#### 문제18
![18](https://user-images.githubusercontent.com/116356234/233768299-f09aae02-ce71-42d3-a6d6-ec742ed1c05e.png)

#### 내 코드
```SQL
select student_no, student_name
    from(select s.STUDENT_NO, s.STUDENT_NAME, avg(g.POINT) 평점
                    from TB_STUDENT s join tb_grade g on s.STUDENT_NO = g.STUDENT_NO
                                        join TB_DEPARTMENT d using(DEPARTMENT_NO)
                    where d.DEPARTMENT_NAME = '국어국문학과'
                    group by s.STUDENT_NO, s.STUDENT_NAME
                    order by 3 desc)
    where rownum = 1
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768978-32592da5-563b-4aea-a01f-9b4b908b2f29.png" width="290">

<hr>

#### 문제19
![19](https://user-images.githubusercontent.com/116356234/233768300-e8a715e1-1f9c-4a52-a44e-855833589ef0.png)

#### 내 코드
```SQL
select d.DEPARTMENT_NAME "계열 학과명", round(avg(g.POINT),1) "전공평점"
    from TB_DEPARTMENT d join TB_CLASS c using(department_no)
                        join tb_grade g using(class_no)
    where d.category = (select CATEGORY from TB_DEPARTMENT  where DEPARTMENT_NAME = '환경조경학과')
            and c.class_type = '전공선택'
    group by d.DEPARTMENT_NAME
    order by 1
;
```

#### 실행 결과
  
<img src="https://user-images.githubusercontent.com/116356234/233768980-8b4d09aa-10f1-4530-a5fb-3ae044cdcaec.png" width="290">
~ 20행 생략
  
</div>
</details>

<details>
<summary><h3>4️⃣ DDL(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">

[→ DDL SQL문 전체보기](https://github.com/homin0203/SQL_exam/blob/main/chun/KH_SQL04_DDL.sql)  
  
#### 문제1
![1](https://user-images.githubusercontent.com/116356234/233769919-b361622c-f067-416b-8d72-262317c9a74d.png)

#### 내 코드
```SQL
DROP TABLE TB_CATEGORY;
CREATE TABLE TB_CATEGORY(
    NAME VARCHAR2(10),
    USE_YN CHAR(1) DEFAULT 'Y'
);
```
  
<hr>

#### 문제2
![2](https://user-images.githubusercontent.com/116356234/233769921-81f84571-c250-47ae-a5a7-db4dc36384c6.png)


#### 내 코드
```SQL
CREATE TABLE TB_CLASS_TYPE(
    NO VARCHAR2(5) PRIMARY KEY,
    NAME VARCHAR2(10)
);  
```


<hr>

#### 문제3
![3](https://user-images.githubusercontent.com/116356234/233769923-6e0c9fa7-5024-4461-a18d-5b0ccd7e1701.png)


#### 내 코드
```SQL
ALTER TABLE TB_CATEGORY ADD CONSTRAINT TC_NAME_PK PRIMARY KEY (NAME);
```


<hr>

#### 문제4
![4](https://user-images.githubusercontent.com/116356234/233769924-0ffa2cf1-60c4-4f4a-97a8-670892f0a4fb.png)


#### 내 코드
```SQL
ALTER TABLE TB_CLASS_TYPE MODIFY NAME NOT NULL;
```


<hr>

#### 문제5
![5](https://user-images.githubusercontent.com/116356234/233769925-0f9f539d-92d1-4677-b382-8bb3a547b1c5.png)


#### 내 코드
```SQL
ALTER TABLE TB_CLASS_TYPE MODIFY (NAME VARCHAR2(20), NO VARCHAR(10));
ALTER TABLE TB_CATEGORY MODIFY (NAME VARCHAR2(20));
```


<hr>

#### 문제6
![6](https://user-images.githubusercontent.com/116356234/233769926-0369ff41-d521-435c-96c0-569efaba9505.png)


#### 내 코드
```SQL
ALTER TABLE TB_CATEGORY RENAME COLUMN  NAME TO CATEGORY_NAME;
ALTER TABLE TB_CLASS_TYPE RENAME COLUMN NAME TO CLASS_TYPE_NAME;
ALTER TABLE TB_CLASS_TYPE RENAME COLUMN NO TO CLASS_TYPE_NO;
```


<hr>

#### 문제7
![7](https://user-images.githubusercontent.com/116356234/233769927-8f8f03a6-7742-406f-bdb4-9bfb42166c23.png)


#### 내 코드
```SQL
ALTER TABLE TB_CATEGORY RENAME CONSTRAINTS TC_NAME_PK TO PK_CATEGORY_NAME;
ALTER TABLE TB_CLASS_TYPE RENAME CONSTRAINTS SYS_C007144 TO PK_CLASS_TYPE_NAME;
```


<hr>

#### 문제8
![8](https://user-images.githubusercontent.com/116356234/233769928-2cd50ccf-2be2-4478-890f-7d706da29478.png)


#### 내 코드
```SQL
INSERT INTO TB_CATEGORY VALUES('공학','Y');
INSERT INTO TB_CATEGORY VALUES('자연과학','Y');
INSERT INTO TB_CATEGORY VALUES('의학','Y');
INSERT INTO TB_CATEGORY VALUES('예체능','Y');
INSERT INTO TB_CATEGORY VALUES('인문사회','Y');
COMMIT;
```


<hr>

#### 문제9
![9](https://user-images.githubusercontent.com/116356234/233769929-8a19615b-c88b-46bb-aa9a-ec4662fa7494.png)


#### 내 코드
```SQL
ALTER TABLE TB_DEPARTMENT ADD CONSTRAINT FK_DEPARTMENT_CATEGORY 
                                FOREIGN KEY (CATEGORY) 
                                REFERENCES TB_CATEGORY(CATEGORY_NAME)
;
```
  

<hr>

#### 문제10
![10](https://user-images.githubusercontent.com/116356234/233769930-1582ef42-69c0-4e75-b434-3877e3988540.png)

#### 내 코드
```SQL
CREATE OR REPLACE VIEW VW_학생일반정보 AS
    SELECT STUDENT_NO 학번,STUDENT_NAME 학생이름,STUDENT_ADDRESS 주소 FROM TB_STUDENT
;
```

<hr>

#### 문제11
![11](https://user-images.githubusercontent.com/116356234/233769931-af34dd93-4668-463a-a39f-c09ab5363df2.png)

#### 내 코드
```SQL
CREATE OR REPLACE VIEW VW_지도면담 AS
SELECT S.STUDENT_NAME 학생이름,D.DEPARTMENT_NAME 학과이름,P.PROFESSOR_NAME 지도교수이름 
        FROM TB_STUDENT S JOIN TB_DEPARTMENT D USING(DEPARTMENT_NO)
                            LEFT JOIN TB_PROFESSOR P ON S.COACH_PROFESSOR_NO = P.PROFESSOR_NO
        ORDER BY 2
;
```

<hr>

#### 문제12
![12](https://user-images.githubusercontent.com/116356234/233769932-dd1393a2-e506-44f9-8a90-ea4b2f63f096.png)

#### 내 코드
```SQL
CREATE OR REPLACE VIEW VW_학과별학생수 AS
SELECT D.DEPARTMENT_NAME 학과이름, COUNT(S.DEPARTMENT_NO) 학생수 
    FROM TB_STUDENT S JOIN TB_DEPARTMENT D ON S.DEPARTMENT_NO = D.DEPARTMENT_NO
    GROUP BY D.DEPARTMENT_NAME
; 
```

<hr>

#### 문제13
![13](https://user-images.githubusercontent.com/116356234/233769934-ccd103b8-0248-4c68-8a6b-cbe6698cdb3a.png)

#### 내 코드
```SQL
UPDATE VW_학생일반정보 SET 학생이름 = '권호민' WHERE 학번 = 'A213046';
COMMIT;
```

<hr>

#### 문제14
![14](https://user-images.githubusercontent.com/116356234/233769935-dda091af-60b2-4f37-b770-532e86b1238c.png)

#### 내 코드
```SQL
CREATE OR REPLACE VIEW 뷰명 AS
    SELECT * FROM 테이블명
    WITH READ ONLY
;
```
  
<hr>

#### 문제15
![15](https://user-images.githubusercontent.com/116356234/233769937-3909361a-0539-437e-b794-b98f7dd13885.png)
  
#### 내 코드
```SQL
SELECT *
FROM(
SELECT C.CLASS_NO,C.CLASS_NAME, COUNT(G.STUDENT_NO)
    FROM TB_GRADE G JOIN TB_CLASS C ON G.CLASS_NO = C.CLASS_NO
    WHERE G.TERM_NO LIKE '2009%' OR G.TERM_NO LIKE '2008%'
                                OR G.TERM_NO LIKE '2007%'
    GROUP BY C.CLASS_NO, C.CLASS_NAME
    ORDER BY 3 DESC)
    WHERE ROWNUM <= 3
;
```

#### 실행 결과
![15](https://user-images.githubusercontent.com/116356234/233770171-4b8fb2cb-4793-4f7e-b8b7-f72c2b3023cf.png)
                    
</div>
</details>

<details>
<summary><h3>5️⃣ DML(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">
  
[→ DML SQL문 전체보기](https://github.com/homin0203/SQL_exam/blob/main/chun/KH_SQL05_DML.sql)  
  
#### 문제1
![1](https://user-images.githubusercontent.com/116356234/233770368-27b37af9-06d0-412d-82fa-3c3640eed25b.png)


#### 내 코드
```SQL
INSERT INTO TB_CLASS_TYPE VALUES('01','전공필수');
INSERT INTO TB_CLASS_TYPE VALUES('02','전공선택');
INSERT INTO TB_CLASS_TYPE VALUES('03','교양필수');
INSERT INTO TB_CLASS_TYPE VALUES('04','교양선택');
INSERT INTO TB_CLASS_TYPE VALUES('05','논문지도');
COMMIT;
```

  
<hr>

#### 문제2
![2](https://user-images.githubusercontent.com/116356234/233770369-7c645809-e2d8-4eda-860e-1f84e908ebe1.png)


#### 내 코드
```SQL
CREATE TABLE TB_학생일반정보 AS SELECT * FROM VW_학생일반정보;
```


<hr>

#### 문제3
![3](https://user-images.githubusercontent.com/116356234/233770371-c153d55e-764a-44b5-b402-f135b4ddc07a.png)


#### 내 코드
```SQL
CREATE TABLE TB_국어국문학과 AS
SELECT S.STUDENT_NO 학번, S.STUDENT_NAME 학생이름
        , TO_CHAR(TO_DATE(SUBSTR(S.STUDENT_SSN,1,2),'RR'),'YYYY') 출생년도
        , P.PROFESSOR_NAME 교수이름
    FROM TB_STUDENT S JOIN TB_PROFESSOR P ON S.COACH_PROFESSOR_NO = P.PROFESSOR_NO
    WHERE S.DEPARTMENT_NO = (SELECT D.DEPARTMENT_NO 
                                FROM TB_DEPARTMENT D 
                                WHERE D.DEPARTMENT_NAME = '국어국문학과')
;

```


<hr>

#### 문제4
![4](https://user-images.githubusercontent.com/116356234/233770372-4d9f9651-da3b-4cae-92b1-c33173c82afa.png)


#### 내 코드
```SQL
UPDATE TB_DEPARTMENT SET CAPACITY = ROUND(CAPACITY*1.1,0);
```


<hr>

#### 문제5
![5](https://user-images.githubusercontent.com/116356234/233770374-d8ba474d-ffed-425e-bf2f-fc891827bc4b.png)

#### 내 코드
```SQL
UPDATE TB_STUDENT 
    SET STUDENT_ADDRESS = '서울시 종로구 숭인동 181-21'
    WHERE STUDENT_NO = 'A413042'
;
```


<hr>

#### 문제6
![6](https://user-images.githubusercontent.com/116356234/233770375-09b1fc0b-2944-463e-a45d-70bc085dc634.png)



#### 내 코드
```SQL
UPDATE TB_STUDENT SET STUDENT_SSN = SUBSTR(STUDENT_SSN,1,6);
```


<hr>

#### 문제7
![7](https://user-images.githubusercontent.com/116356234/233770376-9f8c0c02-fcd8-4ccf-8a1a-1165ab1683ba.png)


#### 내 코드
```SQL
UPDATE TB_GRADE G 
    SET G.POINT = 3.5 
    WHERE (G.STUDENT_NO,G.CLASS_NO) = (SELECT S.STUDENT_NO, C.CLASS_NO
                                            FROM TB_STUDENT S JOIN TB_CLASS C USING(DEPARTMENT_NO)
                                            WHERE S.STUDENT_NAME = '김명훈' 
                                            AND C.CLASS_NAME = '피부생리학')
;
```


<hr>

#### 문제8
![8](https://user-images.githubusercontent.com/116356234/233770377-8c3bed95-55b3-45c2-ad57-91bda395f8ea.png)

#### 내 코드
```SQL
DELETE TB_GRADE G 
    WHERE G.STUDENT_NO IN (SELECT STUDENT_NO 
                                FROM TB_STUDENT 
                                WHERE ABSENCE_YN = 'Y')
;
```
  
</div>
</details>

<br>

## SCOTT

[→ DDL & DML SQL문 보기](https://github.com/homin0203/SQL_exam/blob/main/SCOTT/SCOTT_from_kh_DDL_DMl.sql)  

<details>
<summary><h3>✅ 테이블(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">

### BONUS 

![bonus](https://user-images.githubusercontent.com/116356234/233775555-bea3ad0e-effd-41d4-9dad-6b16c6c7af8e.png)

### DEPT 

![dept](https://user-images.githubusercontent.com/116356234/233775556-b678ff78-77d4-4709-8847-18805b9e574e.png)

### EMP

![emp](https://user-images.githubusercontent.com/116356234/233775557-b30964e8-55c6-4e09-aa46-e535d92d35e5.png)

### SALGRADE

![salgrade](https://user-images.githubusercontent.com/116356234/233775558-b4d6e930-15bb-4d18-9770-a23a1a8ae64e.png)

</div>
</details>

<details>
<summary><h3>1️⃣ SELECT(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">
  
[→ SCOTT SELECT SQL문 전체보기](https://github.com/homin0203/SQL_exam/blob/main/SCOTT/%EB%A1%9C%EC%BB%AC_SCOTT_SELECT%EC%8B%A4%EC%8A%B5%EB%AC%B8%EC%A0%9C.sql)  
  
#### 문제1
![1](https://user-images.githubusercontent.com/116356234/233773760-81649867-fd53-4778-bd0c-ecb349b095b9.png)

#### 내 코드
```SQL
SELECT *
    FROM EMP
    WHERE COMM IS NOT NULL
;
```

#### 실행 결과
![1](https://user-images.githubusercontent.com/116356234/233774872-e3207ad5-725a-4570-ab50-53985bb67d77.png)

  
<hr>

#### 문제2
![2](https://user-images.githubusercontent.com/116356234/233773763-f11b6040-3970-4907-b249-1424699d6ec5.png)


#### 내 코드
```SQL
SELECT *
    FROM EMP
    WHERE COMM IS NULL OR COMM = 0
;  
```
  
#### 실행 결과
![2](https://user-images.githubusercontent.com/116356234/233774875-d119c706-6a04-4f57-96ba-f3c015febdd6.png)


<hr>

#### 문제3
![3](https://user-images.githubusercontent.com/116356234/233773764-95b1e515-9340-458e-847e-dd11cfff63d9.png)


#### 내 코드
```SQL
SELECT *
    FROM EMP
    WHERE MGR IS NULL
;
```

#### 실행 결과
![3](https://user-images.githubusercontent.com/116356234/233774876-507b0fc8-fc2c-4f76-9d1a-c1254cdafde0.png)


<hr>

#### 문제4
![4](https://user-images.githubusercontent.com/116356234/233773765-c482ecc8-6c0e-4f60-9db8-6cd5fe2efb19.png)


#### 내 코드
```SQL
SELECT *
    FROM EMP
    ORDER BY SAL DESC
;
```

#### 실행 결과
![4](https://user-images.githubusercontent.com/116356234/233774877-d401eddb-e7d1-4c03-8881-e473441b2725.png)


<hr>

#### 문제5
![5](https://user-images.githubusercontent.com/116356234/233773771-adbbb4b9-abce-4fda-8f0b-17937b9d5c04.png)


#### 내 코드
```SQL
select *
    from emp
    order by SAL desc, COMM desc
;
```

#### 실행 결과
![5](https://user-images.githubusercontent.com/116356234/233774878-22d08f7d-5c53-4a1a-855d-28f0cd228022.png)


<hr>

#### 문제6
![6](https://user-images.githubusercontent.com/116356234/233773772-49953b1a-4ebc-41d1-8e50-cc503a37f99e.png)


#### 내 코드
```SQL
SELECT EMPNO, ENAME, JOB, HIREDATE
    FROM EMP
    ORDER BY 4
;
```

#### 실행 결과
![6](https://user-images.githubusercontent.com/116356234/233774880-6315bf67-4cf6-4cf9-89e4-8b4ab53da8d0.png)


<hr>

#### 문제7
![7](https://user-images.githubusercontent.com/116356234/233773778-eed39151-dffc-4994-824e-652128fc1d5f.png)


#### 내 코드
```SQL
SELECT EMPNO, ENAME
    FROM EMP
    ORDER BY EMPNO DESC
;
```

#### 실행 결과
![7](https://user-images.githubusercontent.com/116356234/233774882-8cf4870a-f208-49b6-904c-223b5c305371.png)


<hr>

#### 문제8
![8](https://user-images.githubusercontent.com/116356234/233773780-ef535775-07af-424c-a9b0-3a5e5218a8ba.png)


#### 내 코드
```SQL
SELECT EMPNO, DEPTNO, HIREDATE, ENAME, SAL
    FROM EMP
    ORDER BY DEPTNO, HIREDATE DESC
;
```

#### 실행 결과
![8](https://user-images.githubusercontent.com/116356234/233774883-77fb9164-4835-468e-b616-dd6bb7696b7d.png)


<hr>

#### 문제9
![9](https://user-images.githubusercontent.com/116356234/233773781-ef46c5b8-5027-4813-95f3-ebd867c29302.png)


#### 내 코드
```SQL
SELECT SYSDATE FROM DUAL;
```

#### 실행 결과
![9](https://user-images.githubusercontent.com/116356234/233774884-670fd1af-8be6-4c62-b219-0a83f74d4d1a.png)
  

<hr>

#### 문제10
![10](https://user-images.githubusercontent.com/116356234/233773783-c5920408-620c-4e5e-b2b5-bbbf733ef89e.png)

#### 내 코드
```SQL
SELECT EMPNO 사번, ENAME 사원명, ROUND(SAL,-2) 급여
    FROM EMP
    ORDER BY 급여 DESC
;
```

#### 실행 결과
![10](https://user-images.githubusercontent.com/116356234/233774886-86f02ea0-cf8b-4df7-93a4-6c770bd5aa47.png)

<hr>

#### 문제11
![11](https://user-images.githubusercontent.com/116356234/233773786-02e1c3e4-fff3-45f7-aa04-75e79bd8289b.png)

#### 내 코드
```SQL
SELECT *
    FROM emp
    WHERE MOD(empno, 2) = 1
;
```

#### 실행 결과
![11](https://user-images.githubusercontent.com/116356234/233774887-2e7c79df-70f5-4a17-ad8c-1468a67319fa.png)

<hr>

#### 문제12
![12](https://user-images.githubusercontent.com/116356234/233773787-6ac78fe9-47c0-47da-8f3a-59edc6a6665b.png)

#### 내 코드
```SQL
SELECT ENAME 사원명, to_char(hiredate, 'YYYY') 입사년도, to_char(hiredate, 'MM') 입사월
    FROM emp
;
```

#### 실행 결과
![12](https://user-images.githubusercontent.com/116356234/233774888-f3f3cbdc-3eb0-495a-b06a-b023209b4888.png)

<hr>

#### 문제13
![13](https://user-images.githubusercontent.com/116356234/233773789-ec3bf4ac-820f-4aee-a7a3-7aa7cb1bdfc3.png)

#### 내 코드
```SQL
SELECT *
    FROM emp
    WHERE TO_CHAR(HIREDATE, 'MM') = 9 --자동형변환으로 숫자형태의 9라고 작성해도 자동으로 비교해준다.
;
```

#### 실행 결과
![13](https://user-images.githubusercontent.com/116356234/233774889-d0901b36-3d5a-4a50-b029-8d8c6b8f0c5b.png)

<hr>

#### 문제14
![14](https://user-images.githubusercontent.com/116356234/233773790-a2b65e9d-1c79-46d7-ba35-4b0ecd89fc4d.png)

#### 내 코드
```SQL
SELECT *
    FROM emp
    WHERE TO_CHAR(HIREDATE, 'YY') = 81
;
```

#### 실행 결과
![14](https://user-images.githubusercontent.com/116356234/233774890-91ba6081-9290-438c-90ef-b0eecb98a222.png)

<hr>

#### 문제15
![15](https://user-images.githubusercontent.com/116356234/233773793-c95d5809-6ff9-4573-8973-848710cd11c7.png)

#### 내 코드
```SQL
SELECT *
    FROM emp
    WHERE ename LIKE '%E'
;
```

#### 실행 결과
![15](https://user-images.githubusercontent.com/116356234/233774891-1ca7a0a8-69ae-43c3-972c-08a9e7c1f239.png)

<hr>

#### 문제16
![16](https://user-images.githubusercontent.com/116356234/233773794-573f176b-8c84-4a7f-8315-6e280cc96e65.png)

#### 내 코드
```SQL
SELECT *
    FROM emp
    WHERE ename LIKE '__R%'
;
```

#### 실행 결과
![16](https://user-images.githubusercontent.com/116356234/233774892-e1ff21e1-afb9-4eb0-81ce-19068773ff3e.png)

<hr>

#### 문제17
![17](https://user-images.githubusercontent.com/116356234/233773796-5a014fb6-1c15-4cb7-a4e9-0a0f2ac35094.png)

#### 내 코드
```SQL
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE,'480')
    FROM EMP
;
```

#### 실행 결과
![17](https://user-images.githubusercontent.com/116356234/233774893-a89748d8-0c97-46c1-b92d-98d5aa7313e4.png)

<hr>

#### 문제18
![18](https://user-images.githubusercontent.com/116356234/233773798-92f7a58c-a9b1-41ee-a01b-086f5c2c260e.png)

#### 내 코드
```SQL
SELECT *
    FROM emp
    WHERE (MONTHS_BETWEEN(sysdate, hiredate)/12) >= 38
;
```

#### 실행 결과
![18](https://user-images.githubusercontent.com/116356234/233774894-131fde08-b9fd-4f91-bb3d-2051c56176e2.png)

<hr>

#### 문제19
![19](https://user-images.githubusercontent.com/116356234/233773799-c24e47c6-c7dc-4ef3-8934-fad3d0457bbb.png)
  
#### 내 코드
```SQL
SELECT TO_CHAR(SYSDATE, 'YYYY') FROM DUAL;
```

#### 실행 결과
![19](https://user-images.githubusercontent.com/116356234/233774895-9cf30b45-2f10-49d6-92f9-5e0e6186bf40.png)
  
</div>
</details>

<details>
<summary><h3>2️⃣ Join & SubQuery(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">

[→ SCOTT Join & SubQuery SQL문 전체보기](https://github.com/homin0203/SQL_exam/blob/main/SCOTT/SCOTT_Join_SubQuery%EC%8B%A4%EC%8A%B5%EB%AC%B8%EC%A0%9C.sql) 

#### 문제1
![1](https://user-images.githubusercontent.com/116356234/233884345-f4005367-4e0e-4a31-8280-3c98565d12c7.png)


#### 내 코드
```SQL
select e.*, s.grade
    from emp e join SALGRADE s
    on e.sal between s.LOSAL and s.HISAL
;   
```

#### 실행 결과
![1](https://user-images.githubusercontent.com/116356234/233885440-e576aeb3-e1d7-46cd-a7b4-69d42f107154.png)

  
<hr>

#### 문제2
![2](https://user-images.githubusercontent.com/116356234/233884349-ab29258d-c605-4767-9a59-112021aed31f.png)


#### 내 코드
```SQL
select e.*, s.grade
    from emp e join SALGRADE s
    on e.sal between s.LOSAL and s.HISAL
    where s.grade <= 4 and deptno != 10
    order by s.grade desc
;    
```
  
#### 실행 결과
![2](https://user-images.githubusercontent.com/116356234/233885443-48c89265-70ea-4c3e-8f6d-21b2300764d0.png)


<hr>

#### 문제3
![3](https://user-images.githubusercontent.com/116356234/233884350-a5504e5a-3cbe-4e3d-9818-20ca5f1193b5.png)


#### 내 코드
```SQL
select s.grade, avg(sal*12+nvl(comm,0)) 평균연봉
    from emp e join SALGRADE s
    on e.sal between s.LOSAL and s.HISAL
    where deptno in (20,30)
    group by s.grade
    order by 평균연봉 desc
; 
```

#### 실행 결과
![3](https://user-images.githubusercontent.com/116356234/233885444-213a1644-60d9-4fd8-b5dd-3a4cce6863d6.png)


<hr>

#### 문제4
![4](https://user-images.githubusercontent.com/116356234/233884351-3fef669a-e9db-428c-91ee-3aca14681298.png)


#### 내 코드
```SQL
select deptno, floor(avg(sal*12+nvl(comm,0))) 평균연봉
    from emp 
    where deptno in (20,30)
    group by deptno
    order by 평균연봉 desc
; 
```

#### 실행 결과
![4](https://user-images.githubusercontent.com/116356234/233885446-aa9e7ab8-a4df-40fe-a1c4-8324c2f6a6c8.png)


<hr>

#### 문제5
![5](https://user-images.githubusercontent.com/116356234/233884352-4d28e0e6-898b-4bb9-b3cf-4d61604f389e.png)


#### 내 코드
```SQL
select empno, ename, job, mgr,
            (select ename from emp s where empno in (e.mgr)) manager
    from emp e
;
```

#### 실행 결과
![5](https://user-images.githubusercontent.com/116356234/233885447-6dace550-3d94-476b-9a74-d48288ce0689.png)


<hr>

#### 문제6
![6](https://user-images.githubusercontent.com/116356234/233884354-8a83149b-2830-4ec1-bad0-e9ab9f0c68f5.png)


#### 내 코드
```SQL
select empno, ename, job, mgr,
            (select ename from emp s where empno = (e.mgr)) manager
    from emp e
    order by mgr
;
```

#### 실행 결과
![6](https://user-images.githubusercontent.com/116356234/233885450-5cd4b63b-7c81-40cb-a648-9e38284db0d2.png)


<hr>

#### 문제7
![7](https://user-images.githubusercontent.com/116356234/233884358-80067efd-464c-4edf-b79a-b2518ceae5d8.png)


#### 내 코드
```SQL
select * 
    from emp
    where sal > (select sal from emp where ename = 'MARTIN')
    and deptno in((select deptno from emp where ename = 'ALLEN'), 20)
;
```

#### 실행 결과
![7](https://user-images.githubusercontent.com/116356234/233885452-02c0d8d6-5ed7-44c3-8601-eaca841aa0a9.png)

<hr>

#### 문제8
![8](https://user-images.githubusercontent.com/116356234/233884359-c6b13423-e6da-44f6-ae1a-7da3d69e8f1b.png)


#### 내 코드
```SQL
select ename, (select ename from emp where empno = e.mgr) manager
    from emp e join dept d
    on e.deptno = d.deptno
    where d.DNAME = 'RESEARCH'
;
```

#### 실행 결과
![8](https://user-images.githubusercontent.com/116356234/233885453-0c21171d-1ac2-47dc-a42c-79df80d8388a.png)



<hr>

#### 문제9
![9](https://user-images.githubusercontent.com/116356234/233884361-c5c339d3-9d62-4b62-95ac-988ea70d90a6.png)


#### 내 코드
```SQL
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
```

#### 실행 결과
![9](https://user-images.githubusercontent.com/116356234/233885454-56dd2910-c852-4966-b4e3-5cceba4b6e88.png)


<hr>

#### 문제10
![10](https://user-images.githubusercontent.com/116356234/233884362-289e641a-076f-4740-9451-f18fd99e5c5a.png)

#### 내 코드
```SQL
select s.grade, min(sal) min_sal, max(sal) max_sal, round(avg(sal), 2) avg_sal
    from emp e join salgrade s
    on e.sal between s.losal and s.HISAL
    group by s.grade
;
```

#### 실행 결과
![10](https://user-images.githubusercontent.com/116356234/233885455-8972e8a4-e33c-4b4c-a3bf-f80b19e794ae.png)


<hr>

#### 문제11
![11](https://user-images.githubusercontent.com/116356234/233884366-ccf5e21c-0588-408c-ad71-238649d620ff.png)

#### 내 코드
```SQL
select grade, m.ename 
from emp m join (select grade , avg(e.sal) a_sal
                    from emp e join salgrade s
                    on e.sal between s.losal and s.hisal
                    group by grade
                    order by grade)
         on sal between a_sal*0.9 and a_sal*1.1
;
```

#### 실행 결과
![11](https://user-images.githubusercontent.com/116356234/233885457-38d3d70f-3159-4d04-bfeb-48123237a055.png)    

<hr>

#### 문제12
![12](https://user-images.githubusercontent.com/116356234/233884367-04577269-7d5d-4b25-8898-7d28b6dcfd5d.png)

#### 내 코드
```SQL
select empno, ename, sal, 
            case when loc = 'NEW YORK' then sal*1.02 
                 when loc = 'DALLAS' then sal*1.05
                 when loc = 'CHICAGO' then sal*1.03
                 when loc = 'BOSTON' then sal*1.07
                 else sal end 추가지원금
    from emp e join dept d
    on e.deptno = d.deptno
    order by 추가지원금-sal desc
;

-- join 서브쿼리 버전
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
```

#### 실행 결과
![12](https://user-images.githubusercontent.com/116356234/233885460-8ed08d78-1f03-476b-a253-18a8a6487465.png)  
  
</div>
</details>

<br>

## KH
  
[→ DDL & DML SQL문 보기](https://github.com/homin0203/SQL_exam/blob/main/KH/KH_from_kh_DDL_DML.sql)  
  
<details>
<summary><h3>✅ 테이블(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">

### DEPARTMENT 
  
![department](https://user-images.githubusercontent.com/116356234/233891122-4a72d5b7-85dd-481b-9ef4-0c674eb8baa2.png)

### EMPLOYEE 
  
![employee](https://user-images.githubusercontent.com/116356234/233891128-4da07bf0-91ad-4699-863a-d3eaef0baa68.png)

### JOB 
  
![job](https://user-images.githubusercontent.com/116356234/233891130-78d55071-abe0-4d07-846e-c275ab804649.png)

### LOCATION 
  
![location](https://user-images.githubusercontent.com/116356234/233891132-ca5c1ad8-7d17-4311-bc53-206b43127118.png)

### NATIONAL 
  
![national](https://user-images.githubusercontent.com/116356234/233891137-e445c70a-c8e2-44ed-abe0-2513620393a9.png)

### SAL_GRADE 
  
![sal_grade](https://user-images.githubusercontent.com/116356234/233891139-672dbfb1-e352-4021-aa56-24f472b3db84.png)

</div>
</details>

<details>
<summary><h3>1️⃣ SELECT(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">

[→ KH SELECT SQL문 전체보기](https://github.com/homin0203/SQL_exam/blob/main/KH/%EB%A1%9C%EC%BB%AC_KH_SELECT%EC%8B%A4%EC%8A%B5%EB%AC%B8%EC%A0%9C.sql) 
  
#### 문제1
![1](https://user-images.githubusercontent.com/116356234/233886694-569b07d4-0e4f-4742-978a-20e9dcdb30f5.png)


#### 내 코드
```SQL
SELECT * FROM JOB;
```

#### 실행 결과
![1](https://user-images.githubusercontent.com/116356234/233890186-def09a67-8ebd-4e89-ae8a-bd3aafe583dd.png)

  
<hr>

#### 문제2
![2](https://user-images.githubusercontent.com/116356234/233886697-dea86be4-2ac1-4a81-b1c6-486c1aab9ace.png)


#### 내 코드
```SQL
SELECT JOB_NAME FROM JOB;  
```
  
#### 실행 결과
![2](https://user-images.githubusercontent.com/116356234/233890191-3491ae6e-dc6b-4934-96d5-3c11e0bcf9e1.png)


<hr>

#### 문제3
![3](https://user-images.githubusercontent.com/116356234/233886699-243bf730-1dbd-4072-b335-6d5b07c02ebc.png)


#### 내 코드
```SQL
SELECT * FROM DEPARTMENT;
```

#### 실행 결과
![3](https://user-images.githubusercontent.com/116356234/233890192-c038d55f-9eab-4404-a385-3ee187d96cc8.png)


<hr>

#### 문제4
![4](https://user-images.githubusercontent.com/116356234/233886700-584b024e-9e13-432c-8229-318fc8dc120b.png)


#### 내 코드
```SQL
SELECT EMP_NAME, EMAIL, PHONE, HIRE_DATE FROM EMPLOYEE;
```

#### 실행 결과
![4](https://user-images.githubusercontent.com/116356234/233890194-3e214869-e7ee-4d24-a5a5-1e8e77f0ffb7.png)


<hr>

#### 문제5
![5](https://user-images.githubusercontent.com/116356234/233886703-38a1f0fa-7924-4e88-b934-640caa47046c.png)


#### 내 코드
```SQL
SELECT HIRE_DATE, EMP_NAME, SALARY FROM EMPLOYEE;
```

#### 실행 결과
![5](https://user-images.githubusercontent.com/116356234/233890197-068b7d58-21b9-4a33-8bb7-5200cff03b3c.png)


<hr>

#### 문제6
![6](https://user-images.githubusercontent.com/116356234/233886710-94182f60-ba08-4a4d-a23f-e21814f42571.png)


#### 내 코드
```SQL
SELECT EMP_NAME, SALARY*12
, SALARY*12*(1+NVL(BONUS, 0))
, SALARY*12*(1+NVL(BONUS, 0)- 0.03) 
    FROM EMPLOYEE
;
```

#### 실행 결과
![6](https://user-images.githubusercontent.com/116356234/233890198-95bea5ee-0e95-4357-8c2e-bc6ac667cd62.png)


<hr>

#### 문제7
![7_1](https://user-images.githubusercontent.com/116356234/233886716-d7e1635e-bd69-46aa-b93a-cf2901b5a886.png)


#### 내 코드
```SQL
SELECT EMP_NAME, SALARY, HIRE_DATE, PHONE
    FROM EMPLOYEE
    WHERE SAL_LEVEL = 'S1'
;
```

#### 실행 결과
![7](https://user-images.githubusercontent.com/116356234/233890200-00e8ba52-cc5d-46a8-94d0-8a7a1519cb90.png)


<hr>

#### 문제8
![8_1](https://user-images.githubusercontent.com/116356234/233886718-25a7c923-e11a-47e8-aef1-46629b3fbba6.png)


#### 내 코드
```SQL
SELECT EMP_NAME
, SALARY
, SALARY*12*(1+NVL(BONUS, 0)- 0.03)
, HIRE_DATE 
    FROM EMPLOYEE
    WHERE SALARY*12*(1+NVL(BONUS, 0)- 0.03) > 50000000
;
```

#### 실행 결과
![8](https://user-images.githubusercontent.com/116356234/233890203-760cd161-41e6-45bc-beda-6d9955b0d8dc.png)


<hr>

#### 문제9
![9_1](https://user-images.githubusercontent.com/116356234/233886719-446901bd-0482-4447-be45-1cb23e73acb0.png)


#### 내 코드
```SQL
SELECT *
    FROM EMPLOYEE
    WHERE SALARY >= 4000000 AND JOB_CODE = 'J2'
;
```

#### 실행 결과
![9](https://user-images.githubusercontent.com/116356234/233890205-e565341e-8bf5-4645-8c88-5f7fdcd4a8f8.png)
  

<hr>

#### 문제10
![10](https://user-images.githubusercontent.com/116356234/233886721-c0784a33-967c-4c0a-a4d6-569372732dfd.png)

#### 내 코드
```SQL
SELECT EMP_NAME, DEPT_CODE, HIRE_DATE
    FROM EMPLOYEE
    WHERE DEPT_CODE IN('D9','D5') AND (HIRE_DATE < '02/01/01')
;
```

#### 실행 결과
![10](https://user-images.githubusercontent.com/116356234/233890208-09c98a2d-7169-4607-8b3f-476418b7a1fd.png)
  
#### 문제11
![11](https://user-images.githubusercontent.com/116356234/233886722-2a36a309-e9c1-49b7-bbe4-dbf0633396ab.png)


#### 내 코드
```SQL
SELECT *
    FROM EMPLOYEE
    WHERE HIRE_DATE BETWEEN '90/01/01' AND '01/01/01'
;
```

#### 실행 결과
![11](https://user-images.githubusercontent.com/116356234/233890209-0c983612-3269-4414-893a-925e00109c05.png)

  
<hr>

#### 문제12
![12_1](https://user-images.githubusercontent.com/116356234/233886723-0183b026-75a6-41cc-9cfa-2d40763f8e49.png)


#### 내 코드
```SQL
SELECT EMP_NAME
    FROM EMPLOYEE
    WHERE EMP_NAME LIKE '%연'
;  
```
  
#### 실행 결과
![12](https://user-images.githubusercontent.com/116356234/233890210-e8e7770d-7a90-440e-9773-ddba8fb5c1ac.png)


<hr>

#### 문제13
![13](https://user-images.githubusercontent.com/116356234/233886727-e46c573a-f044-41bb-bab3-31d9c9d67d5b.png)


#### 내 코드
```SQL
SELECT EMP_NAME, PHONE
    FROM EMPLOYEE
    WHERE PHONE NOT LIKE '010%'
;
```

#### 실행 결과
![13](https://user-images.githubusercontent.com/116356234/233890211-833874a0-3298-4b65-8523-f7894d58c1fe.png)


<hr>

#### 문제14
![14_1](https://user-images.githubusercontent.com/116356234/233886729-7ff94ef1-4e21-4d49-823a-94843d5af349.png)


#### 내 코드
```SQL
SELECT *
    FROM EMPLOYEE
    WHERE (EMAIL LIKE '____#_%' ESCAPE '#')
    AND (DEPT_CODE IN('D9','D6'))
    AND (HIRE_DATE BETWEEN '90/01/01' AND '00/12/01')
    AND (SALARY > 2700000)
;
```

#### 실행 결과
![14](https://user-images.githubusercontent.com/116356234/233890212-53715504-a8aa-4663-8fda-ccbbad2545b5.png)


<hr>

#### 문제15
![15](https://user-images.githubusercontent.com/116356234/233886734-05d5ccb2-1b4a-4ba4-a1c3-2ddd9d2fa9b6.png)


#### 내 코드
```SQL
SELECT EMP_NAME, SUBSTR(EMP_NO,1,2), SUBSTR(EMP_NO,3,2), SUBSTR(EMP_NO,5,2) 
    FROM EMPLOYEE
; 
```

#### 실행 결과
![15](https://user-images.githubusercontent.com/116356234/233890214-c6b40af3-4abd-4248-ad7f-4bf47a95fdee.png)


<hr>

#### 문제16
![16](https://user-images.githubusercontent.com/116356234/233886736-6a3a02d2-6bdf-4308-a46d-6f35995041e4.png)


#### 내 코드
```SQL
SELECT EMP_NAME, RPAD(SUBSTR(EMP_NO,1,7),14,'*') 
    FROM EMPLOYEE
;
```

#### 실행 결과
![16](https://user-images.githubusercontent.com/116356234/233890216-f46caf58-145d-432e-980d-a4389bd88009.png)


<hr>

#### 문제17
![17](https://user-images.githubusercontent.com/116356234/233886739-5ba5150b-2308-4e84-bc33-4fcade4c105c.png)


#### 내 코드
```SQL
SELECT EMP_NAME
, ABS(FLOOR(MONTHS_BETWEEN(HIRE_DATE, SYSDATE)/12*365)) 근무일수1
, ABS(FLOOR(MONTHS_BETWEEN(SYSDATE, HIRE_DATE)/12*365)) 근무일수2
    FROM EMPLOYEE
;
```

#### 실행 결과
![17](https://user-images.githubusercontent.com/116356234/233890219-b77d3baa-e0bb-4ca4-886e-dc1eda94230f.png)


<hr>

#### 문제18
![18](https://user-images.githubusercontent.com/116356234/233886742-04f56f76-e420-474c-9e70-14b3bba127df.png)


#### 내 코드
```SQL
SELECT *
    FROM EMPLOYEE
    WHERE MOD(EMP_ID,2) = 1
;
```

#### 실행 결과
![18](https://user-images.githubusercontent.com/116356234/233890220-69bee236-d3f1-47ca-a227-7d959513b4cc.png)


<hr>

#### 문제19
![19](https://user-images.githubusercontent.com/116356234/233886744-c1b37b0c-b0a8-49f1-9b14-9b8f1eab226b.png)


#### 내 코드
```SQL
SELECT *
    FROM EMPLOYEE
    WHERE MONTHS_BETWEEN(SYSDATE, HIRE_DATE)/12 >= 20
;

```

#### 실행 결과
![19](https://user-images.githubusercontent.com/116356234/233890222-910eb202-64d6-4555-bcc9-c83fca2cb5b1.png)
  

<hr>

#### 문제20
![20](https://user-images.githubusercontent.com/116356234/233886745-66f30322-45b8-4cd5-9f82-5e45e069a61b.png)

#### 내 코드
```SQL
SELECT EMP_NAME, TO_CHAR(SALARY, '$9,999,999')
    FROM EMPLOYEE
;
```

#### 실행 결과
![20](https://user-images.githubusercontent.com/116356234/233890224-09d2279c-c1b9-4d51-b62c-0e1a4fe85ad8.png)
  

<hr>

#### 문제21
![21](https://user-images.githubusercontent.com/116356234/233886747-98e5417e-cab1-40d5-afb3-e12a3c68a202.png)

#### 내 코드
```SQL
SELECT EMP_NAME
, DEPT_CODE
, SUBSTR(EMP_NO,1,2) ||'년'||SUBSTR(EMP_NO,3,2)||'월'||SUBSTR(EMP_NO,5,2)||'일' 생년월일
, TO_CHAR(SYSDATE, 'YYYY') - (1900+SUBSTR(EMP_NO,1,2))
    FROM EMPLOYEE
;
```

#### 실행 결과
![21](https://user-images.githubusercontent.com/116356234/233890227-4d03931e-5357-4f68-bef1-e70475e085bc.png)
  

<hr>

#### 문제22
![22](https://user-images.githubusercontent.com/116356234/233886749-496382cc-4369-44ee-9930-2958e222c5eb.png)

#### 내 코드
```SQL
SELECT EMP_ID, EMP_NAME, DEPT_CODE, CASE WHEN DEPT_CODE = 'D5' THEN '총무부'
              WHEN DEPT_CODE = 'D6' THEN '기획부'
              WHEN DEPT_CODE = 'D9' THEN '영업부' 
              END 부서
    FROM EMPLOYEE
    WHERE DEPT_CODE IN('D5','D6','D9') 
    ORDER BY DEPT_CODE
;
```

#### 실행 결과
![22](https://user-images.githubusercontent.com/116356234/233890229-f6056cc4-5845-4f6a-ba1e-36ec3bc4e2bf.png)
  

<hr>

#### 문제23
![23](https://user-images.githubusercontent.com/116356234/233886750-71226a8f-d5c8-476e-b678-ea2bb7364b3b.png)

#### 내 코드
```SQL
SELECT EMP_NAME, SUBSTR(EMP_NO,1,6), SUBSTR(EMP_NO,8), SUBSTR(EMP_NO,1,6)+SUBSTR(EMP_NO,8)
    FROM EMPLOYEE
    WHERE EMP_ID = '201'
;
```

#### 실행 결과
![23](https://user-images.githubusercontent.com/116356234/233890230-702fcd31-d978-4718-af29-cdfcd7a5b207.png)
  

<hr>

#### 문제24
![24](https://user-images.githubusercontent.com/116356234/233886751-ae160cbc-306c-4de3-8af3-6702d6b9080d.png)

#### 내 코드
```SQL
SELECT SUM((SALARY*(1+NVL(BONUS, 0)))*12) "Total" 
    FROM EMPLOYEE
    WHERE DEPT_CODE = 'D5'
;
```

#### 실행 결과
![24](https://user-images.githubusercontent.com/116356234/233890231-80a2c8cd-8d3d-4edb-8b87-1e8183d58ba9.png)  
  
</div>
</details>

<details>
<summary><h3>2️⃣ Join & SubQuery(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">

[→ KH Join & SubQuery SQL문 전체보기](https://github.com/homin0203/SQL_exam/blob/main/KH/KH_Join_SubQuery%EC%8B%A4%EC%8A%B5%EB%AC%B8%EC%A0%9C.sql) 
  
#### 문제1
![1_1](https://user-images.githubusercontent.com/116356234/233891808-26551c04-436d-470b-a5a9-02f9955cf750.png)

#### 내 코드
```SQL
select emp_name, emp_no, d.DEPT_TITLE, j.JOB_NAME
    from EMPLOYEE e natural join job j 
        join DEPARTMENT d on e.dept_code = d.DEPT_ID
    where emp_name Like '전%' and emp_no like '7%'
;
```

#### 실행 결과
![1](https://user-images.githubusercontent.com/116356234/233892804-c2771be6-ba31-4afc-b6e5-8eb2a182a631.png)

  
<hr>

#### 문제2
![2](https://user-images.githubusercontent.com/116356234/233891813-ad1c7787-e658-4755-821a-41f34526cf2c.png)


#### 내 코드
```SQL
select emp_id, emp_name
        ,(to_char(sysdate,'yy')+'100')-(substr(emp_no,1,2)) 나이
        , d.DEPT_TITLE
        , j.JOB_NAME
    from employee e natural join job j 
        join DEPARTMENT d on e.dept_code = d.DEPT_ID
    where emp_no = (select max(emp_no) from employee) 
;  
```
  
#### 실행 결과
![2](https://user-images.githubusercontent.com/116356234/233892806-00a03439-fa1e-4450-ae86-74824c2f94e9.png)

<hr>

#### 문제3
![3](https://user-images.githubusercontent.com/116356234/233891815-fa8ca926-4c24-4fed-9b58-41ce6c8216f2.png)


#### 내 코드
```SQL
select emp_id, emp_name, JOB_NAME
    from employee e join job j
    on e.job_code = j.job_code
    where emp_name like '%형%'
;
```

#### 실행 결과
![3](https://user-images.githubusercontent.com/116356234/233892807-2d62a9d1-1a3b-4f0c-94e4-c986b3fb6ca6.png)

<hr>

#### 문제4
![4](https://user-images.githubusercontent.com/116356234/233891818-9ee69416-999f-469e-93c7-5fd852dab9eb.png)


#### 내 코드
```SQL
select emp_name, j.JOB_NAME , dept_code, d.DEPT_TITLE
    from employee e natural join job j 
        join DEPARTMENT d on e.dept_code = d.DEPT_ID
    where dept_code in('D5','D6')
;
```

#### 실행 결과
![4](https://user-images.githubusercontent.com/116356234/233892808-7010af6c-5045-42f9-bb74-1ac8cc4b8762.png)

<hr>

#### 문제5
![5](https://user-images.githubusercontent.com/116356234/233891820-7fa0cfe4-d7ec-4718-9806-4d3ca7eda4da.png)


#### 내 코드
```SQL
select emp_name, bonus, d.DEPT_TITLE, l.local_name
    from employee e join DEPARTMENT d on e.dept_code = d.DEPT_ID
                    join LOCATION l on d.LOCATION_ID = l.local_code  
    where bonus is not null
;
```

#### 실행 결과
![5](https://user-images.githubusercontent.com/116356234/233892811-21aacfbb-3c2d-4c66-b46d-85d1f8be4e31.png)

<hr>

#### 문제6
![6](https://user-images.githubusercontent.com/116356234/233891831-d9bbfe1c-2a51-4ab4-9aa9-7f94e2f54e3a.png)


#### 내 코드
```SQL
select emp_name, j.JOB_NAME, d.DEPT_TITLE, l.LOCAL_NAME
    from employee e join DEPARTMENT d on e.dept_code = d.DEPT_ID
                    join job j on e.job_code = j.job_code  
                    join LOCATION l on d.LOCATION_ID = l.local_code 
;
```

#### 실행 결과
![6](https://user-images.githubusercontent.com/116356234/233892814-94be28ca-1283-49d0-92d0-df9d83ec3f9d.png)

<hr>

#### 문제7
![7](https://user-images.githubusercontent.com/116356234/233891833-68c8ce36-1b3c-4571-abff-fdaf2087391a.png)


#### 내 코드
```SQL
select emp_name, d.DEPT_TITLE, l.LOCAL_NAME, n.NATIONAL_NAME
    from employee e join DEPARTMENT d on e.dept_code = d.DEPT_ID
                    join LOCATION l on d.LOCATION_ID = l.local_code 
                    join NATIONAL n on l.NATIONAL_CODE = n.NATIONAL_CODE
    where n.NATIONAL_NAME in('한국','일본')
;
```

#### 실행 결과
![7](https://user-images.githubusercontent.com/116356234/233892815-996ca420-8947-43c7-9f36-f3d4583ee145.png)


<hr>

#### 문제8
![8](https://user-images.githubusercontent.com/116356234/233891835-7273eaf2-72ac-4a1f-9632-9facb830aab2.png)


#### 내 코드
```SQL
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
```

#### 실행 결과
![8](https://user-images.githubusercontent.com/116356234/233892820-28f420d4-275c-48e0-93d9-58871ee8b326.png)


<hr>

#### 문제9
![9](https://user-images.githubusercontent.com/116356234/233891838-c16d4132-f352-47a0-b598-220d159be8b1.png)


#### 내 코드
```SQL
select emp_name, j.JOB_NAME, salary*(1+nvl(bonus, 0)) 급여
    from employee e join job j
    on e.job_code = j.job_code
    where e.bonus is null and e.job_code in('J4','J7')
;
```

#### 실행 결과
![9](https://user-images.githubusercontent.com/116356234/233892822-27e91da2-3f9e-483b-bb2a-aa2824106821.png)

<hr>

#### 문제10
![10](https://user-images.githubusercontent.com/116356234/233891840-d0945b1d-0f87-4821-a40a-a0dce61f4fce.png)

#### 내 코드
```SQL
select emp_id, emp_name,  DEPT_TITLE, JOB_NAME, hire_date, rownum from(
select emp_id, emp_name, d.DEPT_TITLE, j.JOB_NAME , hire_date, salary*(1+nvl(bonus,0))*12 연봉
    from employee e join DEPARTMENT d on e.DEPT_CODE = d.DEPT_ID
                    join job j on e.job_code = j.JOB_CODE
    order by 연봉 desc)
    where rownum <= 5
;
```

#### 실행 결과
![10](https://user-images.githubusercontent.com/116356234/233892823-6d925527-d601-4c31-b1ce-38dc7de0909c.png)

<hr>

#### 문제11
![11](https://user-images.githubusercontent.com/116356234/233891842-a244a82d-1e79-4ab7-a7a2-3601932b0aa7.png)

#### 내 코드
```SQL
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
```

#### 실행 결과
![11](https://user-images.githubusercontent.com/116356234/233892824-b83c95f2-12c3-4b65-8446-3b8246ce04ed.png)

<hr>

#### 문제12
![12](https://user-images.githubusercontent.com/116356234/233891843-e9379a3f-925b-4ec0-b481-8273f0096526.png)

#### 내 코드
```SQL
select d.dept_title , sum(salary) 부서별급여
                from employee e left join department d
                on e.dept_code = d.DEPT_ID
                group by d.dept_title
;
```

#### 실행 결과
![12](https://user-images.githubusercontent.com/116356234/233892827-6e418b0c-2a34-4fa6-b390-000536c881d5.png)

<hr>

#### 문제13
![13](https://user-images.githubusercontent.com/116356234/233891844-8b1d77de-259d-4105-b6a4-e60f66e5374d.png)
  
#### 내 코드
```SQL
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
```

#### 실행 결과
![13](https://user-images.githubusercontent.com/116356234/233892829-31d8a4a5-1530-41d2-adfd-83d854a53265.png)

</div>
</details>
