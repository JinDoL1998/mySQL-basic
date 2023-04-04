CREATE DATABASE HumanResource;

USE HumanResource;

CREATE TABLE Department(
	department_code VARCHAR(10) PRIMARY KEY,
    department_name VARCHAR(20) NOT NULL,
    department_tel_number VARCHAR(20) NOT NULL UNIQUE,
    department_address VARCHAR(30) NOT NULL,
    head_employee_number INT
);

CREATE TABLE Posit(
	position_code VARCHAR(10) PRIMARY KEY,
    position_name VARCHAR(10) NOT NULL
);

CREATE TABLE Employee(
	employee_number INT,
    employe_name VARCHAR(20) NOT NULL,
    employee_birth_date VARCHAR(20) NOT NULL,
    employee_tel_number VARCHAR(20) NOT NULL UNIQUE,
    employee_address VARCHAR(30) NOT NULL,
    department_code VARCHAR(10),
    position_code VARCHAR(10)
);

INSERT INTO Department
VALUES ('DEV', '개발부', '051-240-1155', '부산광역시 부산진구', 2023010101);

INSERT INTO Posit
VALUES('P01', '사원');

INSERT INTO Employee
VALUES(2023010101, 'John Doe', '1980-11-12', '010-9184-6574', 
	   '부산광역시 부산진구', 'DEV', 'P01');
	
CREATE TABLE Annual_Income (
	department_code VARCHAR(10),
    position_code VARCHAR(10),
    annual_income_amount INT NOT NULL,
    
    FOREIGN KEY (department_code)
    REFERENCES Department(department_code)
    ON UPDATE CASCADE,
    
    FOREIGN KEY (position_code)
    REFERENCES Posit(position_code)
    ON UPDATE CASCADE
);

INSERT INTO Annual_Income
VALUES ('DEV', 'P01', 38000000);

SELECT D.department_code, D.department_name, E.employee_number, E.employee_tel_number
FROM Department D
INNER JOIN Employee E
ON D.head_employee_number = E.employee_number
WHERE D.department_code = 'DEV';

# 7. 사번이 2023010102, 이름이 'raynor seo', 생년월일이 1993-06-02, 전화번호가 010-4736-1346,
# 주소가 '부산광역시 서구', 부서가 'DEV',직급이 'PO1' 인 레코드를 삽입하고 데이터베이스에 영구히 적용하시오.

INSERT INTO Employee
VALUES (2023010102, 'raynor seo', '1993-06-02', '010-4736-1346', '부산광역시 서구', 'DEV', 'P01');
COMMIT;

CREATE INDEX Employee_Dev_Posit_Code
ON Employee (department_code, position_code);

CREATE VIEW Read_Employee_Info AS
SELECT D.department_code, D.department_name, E.employee_number, E.employee_tel_number
FROM Department D
INNER JOIN Employee E
ON D.head_employee_number = E.employee_number;


       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       