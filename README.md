# Library Management System Database Project

## Project Description

This project aims to create a comprehensive SQL database for a Library Management System. Through this project, we'll explore various SQL concepts including database design, table creation, data insertion, querying, and more complex operations like joins and subqueries.

## Project Steps

1. **Database Design**: Create the schema for Books, Authors, Borrowers, and Loans tables.
2. **Creating Tables**: Write SQL statements to create the designed tables.
3. **Inserting Sample Data**: Populate the tables with sample data.
4. **Basic Queries**: Retrieve information from individual tables.
5. **Joins**: Create complex queries involving multiple tables.
6. **Advanced Queries**: Work with subqueries, aggregate functions, and other advanced SQL concepts.
7. **Modifying Data**: Practice updating and deleting records.
8. **Creating Views**: Design useful views for the library system.

## Database Schema

Our library management system consists of the following tables:

1. **Books**: Stores information about each book (ID, title, ISBN, publication year, genre, total copies, available copies).
2. **Authors**: Contains details about authors (ID, first name, last name, birth year).
3. **Book_Authors**: A junction table representing the many-to-many relationship between books and authors.
4. **Borrowers**: Stores information about library members (ID, first name, last name, email, phone, registration date).
5. **Loans**: Tracks book loans (ID, book ID, borrower ID, loan date, due date, return date).

The complete schema can be found in the `library_schema.sql` file.

## Project Structure

- `README.md`: This file, containing project information and documentation.
- `library_schema.sql`: SQL file containing the database schema.
