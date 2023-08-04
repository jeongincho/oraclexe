/*
파일명 : ex03-select-orderby.sql
ORDER BY 절
    ORDER BY 절을 사용하여 검색된 행을 정렬합니다.
    ASC : 오름차순, 기본값
    DESC : 내림차순
    SELECT 문의 맨 마지막에 옵니다.
    
    [SELECT문 기본 형식]
    SELECT {DISTICT}| 컬럼명1, 컬럼명2 ...    5
    FROM 테이블명                            1
    WHERE 조건절                            2.
    GROUP BY 컬럼명                         3.
    HAVING 조건절                           4.
    ORDER BY 컬럼명 [ASC|DESC}]             6.
    오더바이 - 맨 마지막에 읽히므로 별칭이 사용 가능.
    

*/
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date;

-- 내림차순 정렬
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC;

-- 열 alias를 기준으로 정렬, annsal 앞에 as 있으나 생략가능
-- annsal 은 별칭, order by 에서는 사용가능하나 where에서는 불가.

SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY annsal;

-- 열 숫자 위치를 사용하여 정렬
-- 셀렉트에 작성한 순서대로 번호가 매겨짐, 아래에서는 3이니 디파트먼트아이디를 기준으로 정렬함
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY 3;


