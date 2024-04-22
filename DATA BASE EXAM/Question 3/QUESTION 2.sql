

-- Create table employeesNO2
CREATE TABLE employeesNO2 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    address VARCHAR(100)
);

-- Insert data into employeesNO2
INSERT INTO employeesNO2 (id, name, age, address) VALUES
(1001, 'Rohan', 26, 'Delhi'),
(1002, 'Ankit', 30, 'Gurgaon'),
(1003, 'Gaurav', 27, 'Mumbai'),
(1004, 'Raja', 28, 'Kolkata');

-- Create table employees
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    address VARCHAR(100)
);

-- Insert data into employees
INSERT INTO employees (id, name, age, address) VALUES
(1001, 'Rohan', 26, 'Delhi'),
(1002, 'Ankit', 30, 'Gurgaon'),
(1003, 'Gaurav', 27, 'Mumbai'),
(1004, 'Raja', 32, 'Nagpur');




