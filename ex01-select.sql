/*
파일명: ex01-select.sql
SQL (Strucured Query Languege) - 구조적 질의 언어
관계형 데이터베이스 시스템에서 자료를 관리 및 처리하기 위해 설계된 언어

SELECT 문
    데이터베이스에서 정보 검색 명령어
    
*/


-- 모든 열 선택 *
/* 어떤 테이블에서 가져올 것인지- 정하면 모든 속성값(column)을 가져옴*/
SELECT *
FROM departments;

-- 특정 열 선택 (프로젝션 projection)
SELECT department_id, location_id
FROM departments;
