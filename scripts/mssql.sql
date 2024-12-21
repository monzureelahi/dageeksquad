-- Step 1: Create the Sample Database
CREATE DATABASE SampleDB;
GO

-- Step 2: Use the Created Database
USE SampleDB;
GO

-- Step 3: Create a Sample Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1), -- Auto-incrementing ID
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    JobTitle NVARCHAR(50),
    HireDate DATE NOT NULL
);
GO

-- Step 4: Insert 5 Sample Records
INSERT INTO Employees (FirstName, LastName, JobTitle, HireDate)
VALUES 
('John', 'Doe', 'Software Engineer', '2021-01-15'),
('Jane', 'Smith', 'Project Manager', '2020-05-22'),
('Alice', 'Brown', 'Data Analyst', '2019-11-01'),
('Bob', 'Johnson', 'System Administrator', '2018-03-10'),
('Eve', 'Davis', 'DevOps Engineer', '2022-07-30');
GO

-- Step 5: Verify the Data
SELECT * FROM Employees;
GO
