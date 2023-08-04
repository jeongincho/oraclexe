/*
���ϸ� : ex02-select-where.sql

������ ����Ͽ� �� ����
    where ���� ����Ͽ� ��ȯ�Ǵ� ���� �����մϴ�.
WHERE
    ������ �����ϴ� ������, QUERY�� �����մϴ�.
    
    �� ���� ���
    -���̸�
    -�� ����
    -�� �̸�, ��� �Ǵ� �� ����Ʈ
    */
    
    --WHERE �� ���
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 90;

/*
���ڿ� �� ��¥
    ���ڿ� �� ��¥ ���� ���� ����ǥ�� �����ϴ�.
    ���� ���� ��ҹ��ڸ� �����ϰ� ��¥ ���� ������ �����մϴ�.
    �⺻ ��¥ ǥ�������� DD-MON-RR
    */
SELECT last_name, job_id, department_id
FROM employees
WHERE last_name = 'Whalen';

SELECT last_name, hire_date
FROM employees
WHERE hire_date = '03/06/17';

/*
�� ������
    Ư�� ǥ������ �ٸ� ���̳� ǥ���İ� ���ϴ� ���ǿ��� ���˴ϴ�.
    = ����
    > ���� ŭ
    >= ���� ũ�ų� ����
    < ���� ����
    <= ���� �۰ų� ����
    <> ���� ����
    BETWEEN ... AND... �� �� ����(��谪 ����)
    IN(set)            �� ����Ʈ �� ��ġ�ϴ� �� �˻�
    LINE               ��ġ�ϴ� ���� ���� �˻�
    IS NULL            NILL ������ ����
    */
    
    --�� ������ ���
    SELECT last_name, salary
    FROM employees
    WHERE salary <= 3000;
    
    --- BETWEEN �����ڸ� ����ϴ� ���� ����
    SELECT last_name, salary
    FROM employees
    WHERE salary BETWEEN 2500 AND 3500;
    
    SELECT last_name, salary
    FROM employees
    WHERE salary >= 2500
    AND salary <= 3500;
    
    -- IN �����ڸ� ����ϴ� ��� ����
    SELECT employee_id, last_name, salary, manager_id
    FROM employees
    WHERE manager_id IN (100,101, 201);
    
    /*
    LINE �����ڸ� ����Ͽ� ���� ��ġ
        LINE �����ڸ� ����Ͽ� ���� �˻� ���ڿ� ���� ��ü ���� �˻��� �����մϴ�.
        �˻� ���ǿ��� ���ͷ� ���ڳ� ���ڰ� ���Ե� �� �ֽ��ϴ�.
            -% : 0�� �̻��� ���ڸ� ��Ÿ���ϴ�.
            - _: �� ���ڸ� ���³��ϴ�.
            
            *%a -> a�� �����ϴ� �͵鸸 �߸�
            %a% -> a�� ���� �͵��� ��� �߸�
        */
    SELECT first_name
    FROM employees
    WHERE first_name LIKE 'A%';
    
    
-- ��ü ���� ����
-- _(���� �� ����) �ڿ��� o��, %�� �ƹ�, ���� ���ڿ��� ����
SELECT last_name
FROM employees
WHERE last_name LIKE '_o%';

-- ESCAPE �ĺ���
SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id LIKE '%SA\_%' ESCAPE '\';
/*
NULL ���� ���
    IS NULL �����ڷ� NULL�� �׽�Ʈ�մϴ�.
    */

SELECT last_name, manager_id
FROM employees
WHERE manager_id IS NULL;

/*
�� �����ڸ� ����Ͽ� ���� ����
    AND: ���� ��� ������ ��� ���� ��� TRUE �ٳ�
    OR : ���� ��� ���� �� �ϳ��� ���� ��� TRUE ��ȯ
    NOT : ������ ������ ��� TRUE�� ��ȯ
*/
-- AND ������ ���
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary >= 10000
AND job_id LIKE '%MAN%';

-- OR ������ ���
SELECT employee_id, last_name, jOb_id, salary, 10000*12*1200 as test
FROM employees
WHERE salary >= 10000
OR job_id LIKE '%MAN%';

-- NOT ������ ���
SELECT last_name, job_id
FROM employees
WHERE job_id NOT IN ('IT_PROG', 'ST_CLERK', 'SA_REP');



    
    