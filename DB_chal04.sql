-- USE classicmodels;
-- 1. customers 테이블에 새 고객 추가
INSERT INTO customers (customerName, phone, address)
VALUES ("Sangwoo", "01012341234", "South Korea");

-- 2. products 테이블에 새 제품 추가
INSERT INTO products (productName, quantity, price)
VALUES ("T1000", 100, 200);

-- 3. employees 테이블에 새 직원 추가
INSERT INTO employees (employeeName, email, jobTitle)
VALUES ("hoyjong", "hyojong@example.com", 'Instructor');