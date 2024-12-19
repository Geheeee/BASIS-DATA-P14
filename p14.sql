use basisdata;
CREATE TABLE Employees (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    Dept VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (Name, Address, Dept, Salary) 
VALUES 
('Alice', '123 Main St', 'HR', 50000.00),
('Bob', '456 Elm St', 'Finance', 60000.00),
('Charlie', '789 Pine St', 'IT', 55000.00);

CREATE USER 'User1'@'%' IDENTIFIED BY 'password123';

GRANT SELECT, INSERT ON basisdata.Employees TO 'User1'@'%';
FLUSH PRIVILEGES;

SHOW GRANTS FOR 'User1'@'%';

