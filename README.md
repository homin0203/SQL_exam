# 데이터 베이스

- 데이터 베이스 교육과목 ORACLE SQL문 과제 기록 

<br>

## 춘대학교

<details>
<summary><h3> 템플릿(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">

#### 문제1


#### 내 코드
```SQL

```

#### 실행 결과

  
<hr>

#### 문제2


#### 내 코드
```SQL
  
```
  
#### 실행 결과


<hr>

#### 문제3


#### 내 코드
```SQL

```

#### 실행 결과


<hr>

#### 문제4


#### 내 코드
```SQL

```

#### 실행 결과


<hr>

#### 문제5


#### 내 코드
```SQL

```

#### 실행 결과


<hr>

#### 문제6


#### 내 코드
```SQL

```

#### 실행 결과


<hr>

#### 문제7


#### 내 코드
```SQL

```

#### 실행 결과


<hr>

#### 문제8


#### 내 코드
```SQL

```

#### 실행 결과


<hr>

#### 문제9


#### 내 코드
```SQL

```

#### 실행 결과
  

<hr>

#### 문제10

#### 내 코드
```SQL

```

#### 실행 결과
  
  
</div>
</details>

<details>
<summary><h3>✅ 테이블 기술서 및 DDL & DML(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">

### 테이블 기술서

![05_실습_KH_춘_TechUniv_Table기술서_2](https://user-images.githubusercontent.com/116356234/233554045-1fa54263-1ac4-4f3d-836b-1c4597a9f56d.png)

![05_실습_KH_춘_TechUniv_Table기술서_3](https://user-images.githubusercontent.com/116356234/233554049-31a43883-e603-4c8b-a50c-46fc1f8329df.png)

### DDL & DML
[→ DDL & DML SQL문 보기](https://github.com/homin0203/SQL_exam/blob/main/chun/%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8_KH_%EC%B6%98_TechUniv_%EC%8B%A4%EC%8A%B5.sql)  

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

<details>
<summary><h3>1️⃣ SELECT(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">
  
#### 문제1
![1](https://user-images.githubusercontent.com/116356234/233773760-81649867-fd53-4778-bd0c-ecb349b095b9.png)

#### 내 코드
```SQL

```

#### 실행 결과

  
<hr>

#### 문제2
![2](https://user-images.githubusercontent.com/116356234/233773763-f11b6040-3970-4907-b249-1424699d6ec5.png)


#### 내 코드
```SQL
  
```
  
#### 실행 결과


<hr>

#### 문제3
![3](https://user-images.githubusercontent.com/116356234/233773764-95b1e515-9340-458e-847e-dd11cfff63d9.png)


#### 내 코드
```SQL

```

#### 실행 결과


<hr>

#### 문제4
![4](https://user-images.githubusercontent.com/116356234/233773765-c482ecc8-6c0e-4f60-9db8-6cd5fe2efb19.png)


#### 내 코드
```SQL

```

#### 실행 결과


<hr>

#### 문제5
![5](https://user-images.githubusercontent.com/116356234/233773771-adbbb4b9-abce-4fda-8f0b-17937b9d5c04.png)


#### 내 코드
```SQL

```

#### 실행 결과


<hr>

#### 문제6
![6](https://user-images.githubusercontent.com/116356234/233773772-49953b1a-4ebc-41d1-8e50-cc503a37f99e.png)


#### 내 코드
```SQL

```

#### 실행 결과


<hr>

#### 문제7
![7](https://user-images.githubusercontent.com/116356234/233773778-eed39151-dffc-4994-824e-652128fc1d5f.png)


#### 내 코드
```SQL

```

#### 실행 결과


<hr>

#### 문제8
![8](https://user-images.githubusercontent.com/116356234/233773780-ef535775-07af-424c-a9b0-3a5e5218a8ba.png)


#### 내 코드
```SQL

```

#### 실행 결과


<hr>

#### 문제9
![9](https://user-images.githubusercontent.com/116356234/233773781-ef46c5b8-5027-4813-95f3-ebd867c29302.png)


#### 내 코드
```SQL

```

#### 실행 결과
  

<hr>

#### 문제10
![10](https://user-images.githubusercontent.com/116356234/233773783-c5920408-620c-4e5e-b2b5-bbbf733ef89e.png)

#### 내 코드
```SQL

```

#### 실행 결과

<hr>

#### 문제11
![11](https://user-images.githubusercontent.com/116356234/233773786-02e1c3e4-fff3-45f7-aa04-75e79bd8289b.png)

#### 내 코드
```SQL

```

#### 실행 결과

<hr>

#### 문제12
![12](https://user-images.githubusercontent.com/116356234/233773787-6ac78fe9-47c0-47da-8f3a-59edc6a6665b.png)

#### 내 코드
```SQL

```

#### 실행 결과

<hr>

#### 문제13
![13](https://user-images.githubusercontent.com/116356234/233773789-ec3bf4ac-820f-4aee-a7a3-7aa7cb1bdfc3.png)

#### 내 코드
```SQL

```

#### 실행 결과

<hr>

#### 문제14
![14](https://user-images.githubusercontent.com/116356234/233773790-a2b65e9d-1c79-46d7-ba35-4b0ecd89fc4d.png)

#### 내 코드
```SQL

```

#### 실행 결과

<hr>

#### 문제15
![15](https://user-images.githubusercontent.com/116356234/233773793-c95d5809-6ff9-4573-8973-848710cd11c7.png)

#### 내 코드
```SQL

```

#### 실행 결과

<hr>

#### 문제16
![16](https://user-images.githubusercontent.com/116356234/233773794-573f176b-8c84-4a7f-8315-6e280cc96e65.png)

#### 내 코드
```SQL

```

#### 실행 결과

<hr>

#### 문제17
![17](https://user-images.githubusercontent.com/116356234/233773796-5a014fb6-1c15-4cb7-a4e9-0a0f2ac35094.png)

#### 내 코드
```SQL

```

#### 실행 결과

<hr>

#### 문제18
![18](https://user-images.githubusercontent.com/116356234/233773798-92f7a58c-a9b1-41ee-a01b-086f5c2c260e.png)

#### 내 코드
```SQL

```

#### 실행 결과

<hr>

#### 문제19
![19](https://user-images.githubusercontent.com/116356234/233773799-c24e47c6-c7dc-4ef3-8934-fad3d0457bbb.png)
  
#### 내 코드
```SQL

```

#### 실행 결과
  
</div>
</details>

<details>
<summary><h3>2️⃣ Join & SubQuery(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">
  
</div>
</details>

<br>

## KH

<details>
<summary><h3>1️⃣ SELECT(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">
  
</div>
</details>

<details>
<summary><h3>2️⃣ Join & SubQuery(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">
  
</div>
</details>
