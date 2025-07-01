INSERT INTO Customers VALUES (1, 'Ram', 'ram@gmail.com', 'Hyderabad');
INSERT INTO Customers VALUES (2, 'Anu', 'anu@gmail.com', 'Delhi');

INSERT INTO Products VALUES (101, 'Laptop', 'Electronics', 60000);
INSERT INTO Products VALUES (102, 'Mouse', 'Electronics', 600);
INSERT INTO Products VALUES (103, 'T-shirt', 'Clothing', 800);

INSERT INTO Orders VALUES (201, 1, '2025-06-01');
INSERT INTO Orders VALUES (202, 2, '2025-06-05');

INSERT INTO OrderDetails VALUES (301, 201, 101, 1);
INSERT INTO OrderDetails VALUES (302, 201, 102, 2);
INSERT INTO OrderDetails VALUES (303, 202, 103, 3);
