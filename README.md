# 📚 Library Management System (SQL Project)

## 📌 Project Overview
This project demonstrates the design and analysis of a **Library Management System** using SQL.  
It focuses on database schema creation, relationships, and solving real-world business queries using SQL.

---

## 🎯 Objectives
- Design a relational database for a library system  
- Establish relationships using Primary and Foreign Keys  
- Perform data analysis using SQL queries  
- Answer operational and business questions  

---

## 🧱 Database Schema

The project consists of the following tables:

- **tbl_publisher** – Stores publisher details  
- **tbl_book** – Stores book information  
- **tbl_book_authors** – Stores authors of books  
- **tbl_library_branch** – Library branch details  
- **tbl_book_copies** – Number of copies per branch  
- **tbl_borrower** – Borrower/member details  
- **tbl_book_loans** – Book issue/loan records  

---

## 🔗 Relationships
- One publisher → Many books  
- One book → Multiple authors  
- One branch → Multiple book copies  
- One borrower → Multiple loans  

---

## 🔍 Key SQL Queries

### 📌 1. Copies of a book in a branch
```sql
SELECT b.title, bc.no_of_copies
FROM tbl_book b
JOIN tbl_book_copies bc ON b.book_id = bc.book_id
JOIN tbl_library_branch lb ON bc.branch_id = lb.branch_id
WHERE b.title = 'The Lost Tribe' AND lb.branch_name = 'Sharpstown';
