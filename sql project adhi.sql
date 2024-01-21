CREATE DATABASE Library;
USE Library;
DROP DATABASE Library;

CREATE TABLE Branch(Branch_no INT PRIMARY KEY,
Manager_id BIGINT,
Branch_Address VARCHAR(500),
Contact_no INT);

CREATE TABLE Employee(Emp_id INT PRIMARY KEY,
Emp_name VARCHAR(200),
Position VARCHAR(200),
Salary INT,
Branch_no INT,
CONSTRAINT fk_1 FOREIGN KEY(Branch_no) REFERENCES Branch(Branch_no));

CREATE TABLE Customer(Customer_id INT PRIMARY KEY,
Customer_name VARCHAR(200),
Customer_address VARCHAR(500),
Reg_date DATE);

CREATE TABLE Books(Isbn INT PRIMARY KEY,
Book_title VARCHAR(500),
Category VARCHAR(200),
Rental_prize INT,
Status_of_book VARCHAR(3),
Author VARCHAR(200),
Publisher VARCHAR(300));

CREATE TABLE IssueStatus(Issue_id INT PRIMARY KEY,
Issued_cust int,
Issued_book_name VARCHAR(300),
Issue_date DATE,
Isbn_book INT,
CONSTRAINT fk_2 FOREIGN KEY(Issued_cust) REFERENCES Customer(Customer_id),
CONSTRAINT fk_3 FOREIGN KEY(Isbn_book) REFERENCES Books(Isbn));

CREATE TABLE ReturnStatus(Return_id INT PRIMARY KEY,
Return_cust VARCHAR(200),
Return_book_name VARCHAR(300),
Return_date DATE,
Isbn_book2 INT,
CONSTRAINT fk_4 FOREIGN KEY(Isbn_book2) REFERENCES Books(Isbn));

INSERT INTO Branch(Branch_no,Manager_id,Branch_address,Contact_no) VALUES
(1,101,"Officers Books Shakthi Nagar Delhi",842804822),
(2,102,"Books Unlimited AG Block Shalimar Bagh Delhi",741055830),
(3,103,"South Asia Publications Shalimar Bagh Delhi",884560917),
(4,104,"World of Books Shahbad Daulatpur Delhi",654908374);

INSERT INTO Employee() VALUES
(1011,"Anirudh","Librarian",80000,2),
(1010,"Sunil","Library Technician",60000,3),
(1023,"Tom","Library Assistant",45000,4),
(1088,"Rony David","Library Clerk",55000,1),
(1026,"Tony","Library Manager",48000,2),
(1091,"Divaas","Senior Librarian",120000,2),
(1072,"Gautham","Research Assistant",40000,2),
(1027,"Joyal","Director of Public Relations",60000,4),
(1032,"Megha","Customer Service Representative",35000,2),
(1045,"Alan","Cashier",35000,1),
(1089,"Alfiya","Customer Service Reprentative",35000,2),
(1100,"Angel","Library Clerk",55000,3),
(1099,"Ajmal Mohammed","Library Assistant",45000,2),
(1084,"Amareesh Soman","Library Technician",60000,1),
(1062,"Joby","Library Clerk",55000,2);

INSERT INTO Customer() VALUES
(1,'Raghav','Shanthi Bhavan Market Road Delhi','2021-01-15'),
(2,'Sonal','Devi House Bilaspur Delhi','2020-11-22'),
(3,'Sneha','Sneha Mandir Sundarpur South East Junction Delhi','2023-09-05'),
(4,'David','Heaven House market Junction sivanipur Delhi','2024-01-01'),
(5,'Sangeeth Verma','Saraswathi Bhavan Garden Park Delhi South','2020-03-13'),
(6,'Moorthi','Moorthi Bhavan Durgamarg Park Junction South Street Delhi','2022-01-21');

INSERT INTO Books() VALUES
(978-03-94-556345,'ABSALOM ABSALOM','Novel',1500,'yes','William Faulkner','Random House'),
(978-81-73-711466,'Wings of Fire','Autobiography',2000,'yes','Dr APJ Abdul Kalam','Universities Press'),
(978-03-12-368623,'An acceptable Time','Science fiction Novel',2500,'yes','Madeleine Engle','Farrar'),
(978-00-60-910631,'After many a summer','Philosophical Novel',2000,'yes','Aldous Huxley','Harper & Row'),
(978-01-51-006106,'All the kings men','Political Fiction',1590,'no','Robert Penn Warren','Brace & Company'),
(978-00-07-232055,'Alone on a wide wide sea','History Fiction',2300,'yes','Michael Morpurgo','Harper Collins'),
(978-08-50-310047,'Behold the Man','Science Fiction',4000,'no','Michael Moorcock','Allison & Busby'),
(978-88-93-819930,'Harry Potter and the goblet of Fire','Fantasy',5000,'yes','J K Rowling','Bloomsbury'),
(978-34-62-015393,'The Catcher in the Rye','Realistic Fiction',4000,'yes','J D Salinger','Little Brown and Company'),
(978-00-99-421344,'The Bridges of Madison County','Romance Novel',3500,'yes','Robert James Waller','Warner Books'),
(978-95-10-445365,'One Hundred Years of solitude','Magic Realism',3000,'yes','Gabriel Garcia Marquez','Harper & Row');

INSERT INTO IssueStatus() VALUES
(1221,5,'Wings of Fire','2021-10-27',978-81-73-711466),
(1234,1,'One Hundred Years of solitude','2021-11-12',978-95-10-445365),
(1235,5,'The Catcher in the Rye','2022-01-20',978-34-62-015393),
(1257,4,'The Bridges of Madison County','2022-03-12',978-00-99-421344),
(1286,3,'Harry Potter and the goblet of Fire','2022-05-01',978-88-93-819930),
(1275,1,'Behold the Man','2022-06-08',978-08-50-310047),
(1292,6,'Alone on a wide wide sea','2022-08-20',978-00-07-232055),
(1281,4,'ABSALOM ABSALOM','2022-10-10',978-03-94-556345),
(1272,1,'An acceptable Time','2022-12-12',978-03-12-368623),
(1243,3,'After many a summer','2023-02-27',978-00-60-910631),
(1212,5,'All the kings men','2023-04-14',978-01-51-006106),
(1210,6,'Alone on a wide wide sea','2023-06-01',978-00-07-232055),
(1220,3,'Harry Potter and the goblet of Fire','2023-06-05',978-88-93-819930),
(1294,1,'Wings of Fire','2023-06-15',978-81-73-711466),
(1227,3,'One Hundred Years of solitude','2023-06-18',978-95-10-445365),
(1238,4,'The Bridges of Madison County','2023-06-25',978-00-99-421344),
(1240,3,'Behold the Man','2023-08-01',978-08-50-310047),
(1250,1,'Alone on a wide wide sea','2023-10-12',978-00-07-232055),
(1278,3,'Wings of Fire','2024-01-01',978-81-73-711466);

INSERT INTO ReturnStatus() VALUES
(2221,5,'Wings of Fire','2021-11-02',978-81-73-711466),
(2234,1,'One Hundred Years of solitude','2021-11-18',978-95-10-445365),
(2235,5,'The Catcher in the Rye','2022-01-28',978-34-62-015393),
(2257,4,'The Bridges of Madison County','2022-03-24',978-00-99-421344),
(2286,3,'Harry Potter and the goblet of Fire','2022-05-28',978-88-93-819930),
(2275,1,'Behold the Man','2022-06-18',978-08-50-310047),
(2292,6,'Alone on a wide wide sea','2022-08-27',978-00-07-232055),
(2281,4,'ABSALOM ABSALOM','2022-10-19',978-03-94-556345),
(2272,1,'An acceptable Time','2023-01-01',978-03-12-368623),
(2243,3,'After many a summer','2023-03-02',978-00-60-910631),
(2212,5,'All the kings men','2023-04-28',978-01-51-006106),
(2210,6,'Alone on a wide wide sea','2023-06-13',978-00-07-232055),
(2220,3,'Harry Potter and the goblet of Fire','2023-06-15',978-88-93-819930),
(2294,1,'Wings of Fire','2023-06-23',978-81-73-711466),
(2227,3,'One Hundred Years of solitude','2023-06-28',978-95-10-445365),
(2238,4,'The Bridges of Madison County','2023-07-01',978-00-99-421344),
(2240,3,'Behold the Man','2023-08-12',978-08-50-310047),
(2250,1,'Alone on a wide wide sea','2023-10-27',978-00-07-232055);

-- 1. Retrieve the book title, category, and rental price of all available books

SELECT Book_title,Category,Rental_Prize FROM Books;

-- 2. List the employee names and their respective salaries in descending order of salary

SELECT Salary ,Emp_name FROM Employee 
ORDER BY Salary DESC;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books.

SELECT c.Customer_name,i.Issued_book_name
FROM  Customer c
JOIN IssueStatus i ON c.Customer_id=i.Issued_cust;

-- 4. Display the total count of books in each category.

SELECT Category,COUNT(Category) FROM Books
GROUP BY Category;

-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.

SELECT Emp_name,Position FROM Employee
WHERE Salary > 50000;

-- 6.List the customer names who registered before 2022-01-01 and have not issued any books yet

SELECT c.Customer_name
FROM Customer c
LEFT JOIN IssueStatus i
ON c.Customer_id = i.Issued_cust
WHERE c.Reg_date < '2022-01-01'
AND i.Issued_cust IS NULL;

-- 7. Display the branch numbers and the total count of employees in each branch

SELECT Branch_no,COUNT(*) AS Total_no_of_employees
FROM Employee GROUP BY Branch_no;

-- 8. Display the names of customers who have issued books in the month of JUNE 2023

SELECT c.Customer_name
FROM Customer c
JOIN IssueStatus i ON i.Issued_cust = c.Customer_id 
WHERE MONTH(i.Issue_date) = 6 AND YEAR(i.Issue_date) = 2023;

-- 9.Retrieve book_title from book table containing history.

SELECT Book_title FROM Books 
WHERE Category = 'History Fiction';

-- 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees

SELECT Branch_no,COUNT(*) AS Total_no_of_employees
FROM Employee 
GROUP BY Branch_no
HAVING COUNT(*) > 5; 