# Library Management System Database Project

## Project Description

This project implements a comprehensive SQL database for a Library Management System. It explores various SQL concepts including database design, table creation, data insertion, querying, data modification, views, and includes a simple Python application for database interaction.

## Project Structure

- `README.md`: This file, containing project information and documentation.
- `library_schema.sql`: SQL file containing the database schema.
- `sample_data.sql`: SQL file with insert statements for sample data.
- `basic_queries.sql`: SQL file containing basic select queries.
- `advanced_queries.sql`: SQL file containing complex queries for library management.
- `modification_queries.sql`: SQL file with UPDATE, DELETE, and INSERT operations.
- `views.sql`: SQL file creating views for commonly used query results.
- `library_app.py`: Python script for a simple command-line interface to interact with the database.

## Database Schema

Our library management system consists of the following tables:

1. **Books**: Stores information about each book.
2. **Authors**: Contains details about authors.
3. **Book_Authors**: A junction table representing the many-to-many relationship between books and authors.
4. **Borrowers**: Stores information about library members.
5. **Loans**: Tracks book loans.

## Features Implemented

1. **Database Design and Creation**: Designed and implemented the database schema.
2. **Sample Data Insertion**: Populated the database with sample data.
3. **Basic Queries**: Implemented fundamental SELECT queries.
4. **Advanced Queries**: Developed complex queries for practical library management insights.
5. **Data Modification**: Implemented UPDATE, DELETE, and INSERT operations.
6. **Views**: Created views for frequently used query results.
7. **Python Application**: Developed a simple command-line interface for database interaction.

## Tools Used

- Database: SQLite
- Programming Language: Python
- Libraries: sqlite3, tabulate

## Getting Started

1. Ensure SQLite and Python are installed on your system.
2. Clone this repository.
3. Navigate to the project directory.
4. Install required Python package: `pip install tabulate`
5. Set up the database:
   ```
   sqlite3 library.db < library_schema.sql
   sqlite3 library.db < sample_data.sql
   sqlite3 library.db < views.sql
   ```
6. Run the application: `python library_app.py`

## Using the Application

The Python application provides a simple interface to:

1. View available books
2. Check overdue loans
3. See popular books
4. Add new books to the system

Follow the on-screen prompts to navigate through these options.

## Learning Outcomes

Through this project, we've gained practical experience in:

- Designing a relational database schema
- Writing and executing various types of SQL queries
- Creating and using views in SQL
- Implementing data modification operations
- Developing a simple application interface to interact with a database
- Version controlling a database project
