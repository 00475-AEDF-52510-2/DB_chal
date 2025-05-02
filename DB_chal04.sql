-- USE classicmodels;
-- 1. customers 테이블에 새 고객 추가
INSERT INTO customers (customerName, phone, address)
VALUES ("Sangwoo", "01012341234", "South Korea");

-- 2. products 테이블에 새 제품 추가
INSERT INTO products (productName, quantity, price)
VALUES ("T1000", 100, 200);

-- 3. employees 테이블에 새 직원 추가
INSERT INTO employees (employeeName, email, job)
VALUES ("Hyojong", "hyojong@example.com", "Manager");

-- 4. offices 테이블에 새 사무실 추가
INSERT INTO offices (address, postalCode, officeCode)
VALUES ("South Korea", "1234", "0101");

-- 5. orders 테이블에 새 주문 추가
INSERT INTO orders (orderNumber, orderDate, customerNumber)
VALUES (1234, "9999-99-99", 123);

-- 6. orderdetails 테이블에 주문 상세 추가
INSERT INTO orderdetails (orderAddress, productCode, quantity)
VALUES ("South Korea", 1234, 1);

-- 7. payments 테이블에 지불 정보 추가
INSERT INTO payments (customerNumber, paymentDate, amount)
VALUES (12345, "9999-99-99", 1);

-- 8. productlines 테이블에 제품 라인 추가
INSERT INTO productlines (productLine, lineDescription)
VALUES ('Terminators', "A series of robots designed for inhuman tasks.");

-- 9. customers 테이블에 다른 지역 고객 추가
INSERT INTO customers (customerName, phone, address)
VALUES ("Farmer", "01056785678", "Moon");

-- 10. products 테이블에 다른 카테고리 제품 추가
INSERT INTO products (productName, quantity, price)
VALUES ('T800', 100, 200);