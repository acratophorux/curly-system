-- Update the genre of a book
UPDATE Books
SET genre = 'Classic Fiction'
WHERE title = 'To Kill a Mockingbird';

-- Increase the total_copies and available_copies of a book
UPDATE Books
SET total_copies = total_copies + 1,
    available_copies = available_copies + 1
WHERE title = '1984';

-- Delete a borrower (be cautious with DELETE operations!)
DELETE FROM Borrowers
WHERE first_name = 'John' AND last_name = 'Doe';

-- Insert a new book
INSERT INTO Books (title, isbn, publication_year, genre, total_copies, available_copies)
VALUES ('The Great Gatsby', '9780743273565', 1925, 'Classic Fiction', 3, 3);

-- Insert a new author and associate with an existing book
INSERT INTO Authors (first_name, last_name, birth_year)
VALUES ('F. Scott', 'Fitzgerald', 1896);

INSERT INTO Book_Authors (book_id, author_id)
VALUES (
    (SELECT book_id FROM Books WHERE title = 'The Great Gatsby'),
    (SELECT author_id FROM Authors WHERE last_name = 'Fitzgerald')
);

-- Mark a book as returned
UPDATE Loans
SET return_date = DATE('now')
WHERE book_id = (SELECT book_id FROM Books WHERE title = 'The Hobbit')
AND borrower_id = (SELECT borrower_id FROM Borrowers WHERE first_name = 'John' AND last_name = 'Doe')
AND return_date IS NULL;