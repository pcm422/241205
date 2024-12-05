use db_test;

-- 문제1: SQL문으로 sales_items 테이블에 데이터 추가하기
INSERT INTO sales_items (sales_record_id, product_id, quantity, created_at) VALUES(1, 1, 10, NOW());

-- 문제2: SQL문으로 products 테이블에 본인만의 시그니처 메뉴 추가하기
INSERT INTO products (name, description, price) VALUES('Pizza', 'bread with cheese and tomato sauce', 100);

-- 문제3: SQL문으로 user1과 user2를 각각 매장 id 5와 7에 소속되어있는 직원과 매니저로 변경하기
-- user1은 매장 5에 소속되어있는 직원
UPDATE users SET is_staff=TRUE WHERE id=1;
INSERT INTO employees (code, type, user_id, store_id, is_active) VALUES(1001, 'STAFF', 1, 5, TRUE);
-- user2는 매장 7에 소속되어있는 매니저
UPDATE users SET is_staff=TRUE WHERE id=2;
INSERT INTO employees (code, type, user_id, store_id, is_active) VALUES(1002, 'MANAGER', 2, 7, TRUE);