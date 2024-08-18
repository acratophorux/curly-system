# Library Management System Database Project

## Project Description

This project creates a comprehensive SQL database for a Library Management System. It explores various SQL concepts including database design, table creation, data insertion, basic and advanced querying.

## Project Progress

1. **Database Design**: Created the schema for Books, Authors, Borrowers, and Loans tables.
2. **Creating Tables**: Wrote SQL statements to create the designed tables.
3. **Inserting Sample Data**: Populated the tables with sample data.
4. **Basic Queries**: Implemented queries to retrieve information from individual tables.
5. **Advanced Queries**: Developed complex queries involving multiple tables for practical library management insights.

## Project Structure

- `README.md`: This file, containing project information and documentation.
- `library_schema.sql`: SQL file containing the database schema.
- `sample_data.sql`: SQL file with insert statements for sample data.
- `basic_queries.sql`: SQL file containing basic select queries.
- `advanced_queries.sql`: SQL file containing complex queries for library management.

## Database Schema

Our library management system consists of the following tables:

1. **Books**: Stores information about each book (ID, title, ISBN, publication year, genre, total copies, available copies).
2. **Authors**: Contains details about authors (ID, first name, last name, birth year).
3. **Book_Authors**: A junction table representing the many-to-many relationship between books and authors.
4. **Borrowers**: Stores information about library members (ID, first name, last name, email, phone, registration date).
5. **Loans**: Tracks book loans (ID, book ID, borrower ID, loan date, due date, return date).

## Queries Implemented

### Basic Queries

- Retrieve all books
- List all authors
- Find books published after a certain year
- Count total number of books
- Find the oldest book
- List borrowers registered in a specific year
- Find currently borrowed books
- Count books in each genre
- Find authors born after a certain year
- List all books with their authors

### Advanced Queries

- Find the most popular books
- List overdue books with borrower information
- Calculate average loan duration for each book
- Find authors whose books have never been borrowed
- List the top most active borrowers

## Tools Used

- Database: SQLite
- Query Tool: SQLite command-line interface

## Getting Started

1. Ensure SQLite is installed on your system.
2. Clone this repository.
3. Navigate to the project directory.
4. Run `sqlite3 library.db` to open the database.
5. Use `.read library_schema.sql` to create the tables.
6. Use `.read sample_data.sql` to insert sample data.
7. Run queries from `basic_queries.sql` and `advanced_queries.sql` as needed.
