DROP DATABASE IF EXISTS library_db;
CREATE DATABASE library_db;
USE library_db;
CREATE TABLE tbl_publisher (
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(100)
);
CREATE TABLE tbl_book (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    publisher_id INT,
    FOREIGN KEY (publisher_id) REFERENCES tbl_publisher(publisher_id)
);
CREATE TABLE tbl_book_authors (
    book_id INT,
    author_name VARCHAR(100),
    FOREIGN KEY (book_id) REFERENCES tbl_book(book_id)
);
CREATE TABLE tbl_library_branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100)
);
CREATE TABLE tbl_book_copies (
    book_id INT,
    branch_id INT,
    no_of_copies INT,
    FOREIGN KEY (book_id) REFERENCES tbl_book(book_id),
    FOREIGN KEY (branch_id) REFERENCES tbl_library_branch(branch_id)
);
CREATE TABLE tbl_borrower (
    card_no INT PRIMARY KEY,
    name VARCHAR(100)
);
CREATE TABLE tbl_book_loans (
    loan_id INT PRIMARY KEY,
    book_id INT,
    branch_id INT,
    card_no INT,
    date_out DATE,
    due_date DATE,
    FOREIGN KEY (book_id) REFERENCES tbl_book(book_id),
    FOREIGN KEY (branch_id) REFERENCES tbl_library_branch(branch_id),
    FOREIGN KEY (card_no) REFERENCES tbl_borrower(card_no)
);
INSERT INTO tbl_publisher VALUES (1,'Penguin'),(2,'HarperCollins');

INSERT INTO tbl_book VALUES
(1,'The Lost Tribe',1),
(2,'The Shining',2),
(3,'IT',2);

INSERT INTO tbl_book_authors VALUES
(1,'Author A'),
(2,'Stephen King'),
(3,'Stephen King');

INSERT INTO tbl_library_branch VALUES
(1,'Sharpstown'),
(2,'Central');

INSERT INTO tbl_book_copies VALUES
(1,1,5),
(1,2,3),
(2,2,4),
(3,2,6);

INSERT INTO tbl_borrower VALUES
(1,'Sohail'),
(2,'Rahul'),
(3,'Amit');

INSERT INTO tbl_book_loans VALUES
(1,1,1,1,'2018-02-01','2018-02-10'),
(2,2,2,2,'2018-02-02','2018-02-12'),
(3,3,2,1,'2018-02-03','2018-02-15');

SELECT * FROM tbl_book;
INSERT INTO tbl_book VALUES
(1,'The Lost Tribe',1),
(2,'The Shining',2),
(3,'IT',2);
SELECT * FROM tbl_book;
INSERT INTO tbl_book_loans VALUES
(1,1,1,1,'2018-02-01','2018-02-10'),
(2,2,2,2,'2018-02-02','2018-02-12'),
(3,3,2,1,'2018-02-03','2018-02-15');
SELECT * FROM tbl_book;
INSERT INTO tbl_publisher VALUES 
(1,'Penguin'),
(2,'HarperCollins');
INSERT INTO tbl_book VALUES
(1,'The Lost Tribe',1),
(2,'The Shining',2),
(3,'IT',2);
SELECT * FROM tbl_book;
INSERT INTO tbl_library_branch VALUES
(1,'Sharpstown'),
(2,'Central');

INSERT INTO tbl_borrower VALUES
(1,'Sohail'),
(2,'Rahul'),
(3,'Amit');
INSERT INTO tbl_book_loans VALUES
(1,1,1,1,'2018-02-01','2018-02-10'),
(2,2,2,2,'2018-02-02','2018-02-12'),
(3,3,2,1,'2018-02-03','2018-02-15');
INSERT INTO tbl_library_branch VALUES
(1,'Sharpstown'),
(2,'Central');
SELECT * FROM tbl_library_branch;
INSERT INTO tbl_book_loans VALUES
(1,1,1,1,'2018-02-01','2018-02-10'),
(2,2,2,2,'2018-02-02','2018-02-12'),
(3,3,2,1,'2018-02-03','2018-02-15');
SELECT * FROM tbl_publisher;
SELECT * FROM tbl_book;
SELECT * FROM tbl_library_branch;
SELECT * FROM tbl_borrower;