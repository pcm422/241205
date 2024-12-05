use db_test;

-- Users 테이블에 데이터 삽입
INSERT INTO users (first_name, last_name, email, password, address, contact, gender, is_active, is_staff) VALUES
('John', 'Doe', 'john.doe@example.com', 'password123', '123 Main St', '123-456-7890', 'MALE', TRUE, FALSE),
('Jane', 'Doe', 'jane.doe@example.com', 'password123', '456 Main St', '987-654-3210', 'FEMALE', TRUE, FALSE),
('Jim', 'Beam', 'jim.beam@example.com', 'password123', '789 Main St', '654-321-0987', 'MALE', TRUE, FALSE),
('Jack', 'Daniels', 'jack.daniels@example.com', 'password123', '321 Main St', '321-098-7654', 'MALE', TRUE, FALSE),
('Jill', 'Valentine', 'jill.valentine@example.com', 'password123', '159 Main St', '567-890-1234', 'FEMALE', TRUE, FALSE),
('Chris', 'Redfield', 'chris.redfield@example.com', 'password123', '753 Main St', '890-123-4567', 'MALE', TRUE, FALSE),
('Albert', 'Wesker', 'albert.wesker@example.com', 'password123', '456 Elm St', '123-123-1234', 'MALE', TRUE, FALSE),
('Leon', 'Kennedy', 'leon.kennedy@example.com', 'password123', '789 Elm St', '456-456-4567', 'MALE', TRUE, FALSE),
('Claire', 'Redfield', 'claire.redfield@example.com', 'password123', '123 Oak St', '789-789-7890', 'FEMALE', TRUE, FALSE),
('Ada', 'Wong', 'ada.wong@example.com', 'password123', '456 Oak St', '012-345-6789', 'FEMALE', TRUE, FALSE);

-- RawMaterials 테이블에 데이터 삽입
INSERT INTO raw_materials (name, price) VALUES
('Material 1', 10.00),
('Material 2', 15.50),
('Material 3', 20.00),
('Material 4', 5.75),
('Material 5', 30.25),
('Material 6', 40.00),
('Material 7', 25.50),
('Material 8', 12.00),
('Material 9', 18.75),
('Material 10', 22.50);

-- Stores 테이블에 데이터 삽입
INSERT INTO stores (name, address, contact, is_active) VALUES
('Store 1', '123 Store St', '123-456-7890', TRUE),
('Store 2', '456 Store St', '987-654-3210', TRUE),
('Store 3', '789 Store St', '654-321-0987', TRUE),
('Store 4', '321 Store St', '321-098-7654', TRUE),
('Store 5', '159 Store St', '567-890-1234', TRUE),
('Store 6', '753 Store St', '890-123-4567', TRUE),
('Store 7', '456 Elm St', '123-123-1234', TRUE),
('Store 8', '789 Elm St', '456-456-4567', TRUE),
('Store 9', '123 Oak St', '789-789-7890', TRUE),
('Store 10', '456 Oak St', '012-345-6789', TRUE);

-- Stocks 테이블에 데이터 삽입
INSERT INTO stocks (raw_material_id, pre_quantity, quantity, change_type, store_id, create_at) VALUES
(1, 100, 50, 'IN', 1, NOW()),
(2, 150, 75, 'OUT', 2, NOW()),
(3, 200, 100, 'RETURNED', 3, NOW()),
(4, 50, 25, 'DISCARDED', 4, NOW()),
(5, 300, 150, 'IN', 5, NOW()),
(6, 400, 200, 'OUT', 6, NOW()),
(7, 250, 125, 'RETURNED', 7, NOW()),
(8, 120, 60, 'DISCARDED', 8, NOW()),
(9, 180, 90, 'IN', 9, NOW()),
(10, 220, 110, 'OUT', 10, NOW());

-- SalesRecords 테이블에 데이터 삽입
INSERT INTO sales_records (user_id, store_id, is_refund, created_at) VALUES
(1, 1, FALSE, NOW()),
(2, 2, FALSE, NOW()),
(3, 3, FALSE, NOW()),
(4, 4, FALSE, NOW()),
(5, 5, FALSE, NOW()),
(6, 6, FALSE, NOW()),
(7, 7, FALSE, NOW()),
(8, 8, FALSE, NOW()),
(9, 9, FALSE, NOW()),
(10, 10, FALSE, NOW());

-- Products 테이블에 데이터 삽입
INSERT INTO products (name, description, price) VALUES
('Product 1', 'Description 1', 100.00),
('Product 2', 'Description 2', 150.50),
('Product 3', 'Description 3', 200.00),
('Product 4', 'Description 4', 50.75),
('Product 5', 'Description 5', 300.25),
('Product 6', 'Description 6', 400.00),
('Product 7', 'Description 7', 250.50),
('Product 8', 'Description 8', 120.00),
('Product 9', 'Description 9', 180.75),
('Product 10', 'Description 10', 220.50);