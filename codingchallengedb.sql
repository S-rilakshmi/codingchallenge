create database codingchallengedb;
use codingchallengedb;
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    EmailAddress VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    CreditScore FLOAT
);
ALTER TABLE Customer
ALTER COLUMN CreditScore SET DEFAULT (300 + (RAND() * (500 - 300)));



CREATE TABLE Loan (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    PrincipalAmount DECIMAL(18, 2),
    InterestRate DECIMAL(5, 2),
    LoanTerm INT,
    LoanType ENUM('CarLoan', 'HomeLoan'),
    LoanStatus ENUM('Pending', 'Approved') ,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

ALTER TABLE Loan
ALTER COLUMN LoanStatus SET DEFAULT 'Pending';


CREATE TABLE HomeLoan (
    LoanID INT PRIMARY KEY,
    PropertyAddress VARCHAR(255),
    PropertyValue DECIMAL(18, 2),
    FOREIGN KEY (LoanID) REFERENCES Loan(LoanID)
);


CREATE TABLE CarLoan (
    LoanID INT PRIMARY KEY,
    CarModel VARCHAR(255),
    CarValue DECIMAL(18, 2),
    FOREIGN KEY (LoanID) REFERENCES Loan(LoanID)
);


INSERT INTO Customer (Name, EmailAddress, PhoneNumber, Address, CreditScore)
VALUES 
    ('Suresh', 'suresh@gmail.com', '111-222-3333', '123 ABC Road, Bangalore, India', 780),
('Priya', 'priya@gmail.com', '444-555-6666', '456 XYZ Street, Mumbai, India', 690),
('Rahul', 'rahul@gmail.com', '777-888-9999', '789 PQR Avenue, Delhi, India', 720);

INSERT INTO Loan (CustomerID, PrincipalAmount, InterestRate, LoanTerm, LoanType, LoanStatus)
VALUES 
    (1, 50000.00, 5.5, 60, 1, 'Approved'),
    (2, 200000.00, 4.0, 120, 2, 'Pending'),
    (3, 30000.00, 6.0, 36, 1, 'Approved');

INSERT INTO Loan (CustomerID, PrincipalAmount, InterestRate, LoanTerm, LoanType)
VALUES 
     (1, 50000.00, 5.5, 60, 1);
INSERT INTO HomeLoan (LoanID, PropertyAddress, PropertyValue)
VALUES 
    (1, '4567 abc, Downtown', 180000.00),
(2, '8910 xyz, Suburb', 220000.00),
(3, '1112 pqr, Countryside', 280000.00);

INSERT INTO CarLoan (LoanID, CarModel, CarValue)
VALUES 
    (1, 'Chevrolet Malibu', 22000.00),
(2, 'BMW 3 Series', 35000.00),
(3, 'Audi A4', 40000.00);