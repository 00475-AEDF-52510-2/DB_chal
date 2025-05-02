-- USE classicmodels;
-- 1. customers 테이블에 새 고객 추가
INSERT INTO customers (customerName, phone, address)
VALUES ("Sangwoo", "01012341234", "South Korea");

-- 2. products 테이블에 새 제품 추가
INSERT INTO products (productName, quantity, price)
VALUES ("T1000", 100, 199);

-- 3. employees 테이블에 새 직원 추가
INSERT INTO employees (employeeName, email, job)
VALUES ("Hyojong", "hyojong@example.com", "Manager");

-- 4. offices 테이블에 새 사무실 추가
INSERT INTO offices (address, postalCode, officeCode)
VALUES ("South Korea", "1234", "0101");

-- 5. orders 테이블에 새 주문 추가
INSERT INTO orders (orderNumber, orderDate, customerNumber)
VALUES (1234, "2025-05-05", 123);

-- 6. orderdetails 테이블에 주문 상세 추가
INSERT INTO orderdetails (orderNumber, orderAddress, productCode, quantity)
VALUES (1357, "South Korea", 1234, 1);

-- 7. payments 테이블에 지불 정보 추가
INSERT INTO payments (customerNumber, paymentDate, amount)
VALUES (12345, "2025-05-05", 1);

-- 8. productlines 테이블에 제품 라인 추가
INSERT INTO productlines (productLine, lineDescription)
VALUES ('Terminators', "A series of robots designed for inhuman tasks.");

-- 9. customers 테이블에 다른 지역 고객 추가
INSERT INTO customers (customerName, phone, address)
VALUES ("Farmer", "01056785678", "Moon");

-- 10. products 테이블에 다른 카테고리 제품 추가
INSERT INTO products (productName, quantity, price)
VALUES ('T800', 100, 150);

-- 1. 모든 고객 정보 조회
SELECT * FROM customers;

-- 2. 모든 제품 목록 조회
SELECT * FROM products;

-- 3. 직원 이름과 직급 조회
SELECT employeeName, job FROM employees;

-- 4. 사무실 위치 조회
SELECT address FROM offices;

-- 5. 최근 10개의 주문 조회
SELECT * FROM orders ORDER BY orderDate DESC LIMIT 10;

-- 6. 특정 주문의 상세 정보 조회
SELECT * FROM orderdetails WHERE orderNumber = 1357;

-- 7. 특정 고객의 지불 정보 조회
SELECT * FROM payments WHERE customerNumber = 12345;

-- 8. 각 제품 라인의 설명 조회
SELECT productLine, lineDescription FROM productlines;

-- 9. 특정 지역의 고객 조회
SELECT * FROM customers WHERE address = 'Moon';

-- 10. 특정 가격 범위 제품 조회
SELECT * FROM products WHERE price BETWEEN 100 AND 200;
