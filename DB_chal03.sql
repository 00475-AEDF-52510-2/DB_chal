USE testdatabase;

-- CREATE TABLE users(
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
--     password VARCHAR(4),
--     name VARCHAR(3),
--     gender ENUM("male", "female"),
--     email VARCHAR(15),
--     birthday CHAR(6),
--     age TINYINT,
--     company ENUM("samsung", "lg", "hyundai")
-- );

-- CREATE TABLE boards(
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
--     title VARCHAR(5),
--     content VARCHAR(10),
--     likes INT CHECK(likes BETWEEN 1 AND 100),
--     img CHAR(1) DEFAULT "c",
--     created DATE,
--     user_id INT, 
--     FOREIGN KEY(user_id) REFERENCES users(id)
-- );

-- 1. 테이블 생성
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2)
);

-- 2.데이터를 테이블에 추가
INSERT INTO employees (name, position, salary) VALUES
('혜린', 'PM', 90000),
('은우', 'Frontend', 80000),
('가을', 'Backend', 92000),
('지수', 'Frontend', 78000),
('민혁', 'Frontend', 96000),
('하온', 'Backend', 130000);

-- 세이프업데이트 해제(where 원할하게 사용 위함)
SET SQL_SAFE_UPDATES = 0;

-- 3. 이름, 연봉만 조회
SELECT name, salary FROM employees;

-- 4. 프론트엔드 중에서 연봉 9만 이하 직원의 이름, 연봉 조회
SELECT name, salary 
FROM employees 
WHERE position = 'Frontend' AND salary <= 90000;

-- 5. PM 연봉 인상 및 조회
UPDATE employees
SET salary = salary * 1.10
WHERE position = 'PM';
SELECT name, position, salary
FROM employees
WHERE position = 'PM';

-- 6. 백엔드 연봉 인상
UPDATE employees
SET salary = salary * 1.05
WHERE position = 'Backend';

-- 7. 민혁 삭제
DELETE FROM employees
WHERE name = '민혁';

-- 8. 평균 계산 및 position 그룹화
SELECT position, AVG(salary)
FROM employees
GROUP BY position;

-- 9. 테이블 삭제
DROP TABLE employees;