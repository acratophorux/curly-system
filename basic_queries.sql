-- 1. Retrieve all books
SELECT * FROM Books;

-- 2. List all authors
SELECT * FROM Authors;

-- 3. Find all books published after 1950
SELECT title, publication_year FROM Books WHERE publication_year > 1950;

-- 4. Count the total number of books
SELECT COUNT(*) as total_books FROM Books;

-- 5. Find the oldest book
SELECT title, publication_year FROM Books ORDER BY publication_year ASC LIMIT 1;

-- 6. List all borrowers who registered in 2023
SELECT first_name, last_name, registration_date FROM Borrowers 
WHERE registration_date LIKE '2023%';

-- 7. Find all currently borrowed books (books not returned)
SELECT Books.title, Borrowers.first_name, Borrowers.last_name, Loans.loan_date
FROM Loans
JOIN Books ON Loans.book_id = Books.book_id
JOIN Borrowers ON Loans.borrower_id = Borrowers.borrower_id
WHERE Loans.return_date IS NULL;

-- 8. Count the number of books in each genre
SELECT genre, COUNT(*) as book_count
FROM Books
GROUP BY genre;

-- 9. Find authors born after 1900
SELECT first_name, last_name, birth_year
FROM Authors
WHERE birth_year > 1900;

-- 10. List all books with their authors
SELECT Books.title, Authors.first_name, Authors.last_name
FROM Books
JOIN Book_Authors ON Books.book_id = Book_Authors.book_id
JOIN Authors ON Book_Authors.author_id = Authors.author_id;