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
  
</div>
</details>

<details>
<summary><h3>4️⃣ DDL(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">
  
</div>
</details>

<details>
<summary><h3>5️⃣ DML(펼쳐보기 🖱️) </h3></summary>
<div markdown="1">
  
</div>
</details>

<br>

## SCOTT

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
