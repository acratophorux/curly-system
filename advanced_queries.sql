-- 1. Find the most popular books (books that have been borrowed the most)
SELECT Books.title, COUNT(Loans.loan_id) as borrow_count
FROM Books
LEFT JOIN Loans ON Books.book_id = Loans.book_id
GROUP BY Books.book_id
ORDER BY borrow_count DESC
LIMIT 5;

-- 2. List all overdue books with borrower information
SELECT Books.title, Borrowers.first_name, Borrowers.last_name, 
       Loans.due_date, 
       (JULIANDAY('now') - JULIANDAY(Loans.due_date)) as days_overdue
FROM Loans
JOIN Books ON Loans.book_id = Books.book_id
JOIN Borrowers ON Loans.borrower_id = Borrowers.borrower_id
WHERE Loans.return_date IS NULL AND Loans.due_date < DATE('now');

-- 3. Calculate the average loan duration for each book
SELECT Books.title, 
       AVG(JULIANDAY(IFNULL(Loans.return_date, DATE('now'))) - JULIANDAY(Loans.loan_date)) as avg_loan_duration
FROM Books
JOIN Loans ON Books.book_id = Loans.book_id
GROUP BY Books.book_id;

-- 4. Find authors whose books have never been borrowed
SELECT Authors.first_name, Authors.last_name
FROM Authors
LEFT JOIN Book_Authors ON Authors.author_id = Book_Authors.author_id
LEFT JOIN Books ON Book_Authors.book_id = Books.book_id
LEFT JOIN Loans ON Books.book_id = Loans.book_id
GROUP BY Authors.author_id
HAVING COUNT(Loans.loan_id) = 0;

-- 5. List the top 3 most active borrowers
SELECT Borrowers.first_name, Borrowers.last_name, COUNT(Loans.loan_id) as loan_count
FROM Borrowers
LEFT JOIN Loans ON Borrowers.borrower_id = Loans.borrower_id
GROUP BY Borrowers.borrower_id
ORDER BY loan_count DESC
LIMIT 3;