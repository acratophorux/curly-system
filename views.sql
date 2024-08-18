-- View for available books
CREATE VIEW available_books AS
SELECT title, isbn, genre, available_copies
FROM Books
WHERE available_copies > 0;

-- View for overdue loans
CREATE VIEW overdue_loans AS
SELECT b.title, br.first_name, br.last_name, l.due_date,
       (JULIANDAY('now') - JULIANDAY(l.due_date)) AS days_overdue
FROM Loans l
JOIN Books b ON l.book_id = b.book_id
JOIN Borrowers br ON l.borrower_id = br.borrower_id
WHERE l.return_date IS NULL AND l.due_date < DATE('now');

-- View for book popularity
CREATE VIEW book_popularity AS
SELECT b.title, COUNT(l.loan_id) AS borrow_count
FROM Books b
LEFT JOIN Loans l ON b.book_id = l.book_id
GROUP BY b.book_id
ORDER BY borrow_count DESC;

-- View for author's books
CREATE VIEW author_books AS
SELECT a.first_name, a.last_name, b.title
FROM Authors a
JOIN Book_Authors ba ON a.author_id = ba.author_id
JOIN Books b ON ba.book_id = b.book_id
ORDER BY a.last_name, a.first_name;