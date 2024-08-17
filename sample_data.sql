-- Insert sample books
INSERT INTO Books (title, isbn, publication_year, genre, total_copies, available_copies)
VALUES 
('To Kill a Mockingbird', '9780446310789', 1960, 'Fiction', 5, 5),
('1984', '9780451524935', 1949, 'Science Fiction', 3, 3),
('Pride and Prejudice', '9780141439518', 1813, 'Romance', 4, 4),
('The Hobbit', '9780547928227', 1937, 'Fantasy', 3, 2),
('The Catcher in the Rye', '9780316769174', 1951, 'Fiction', 4, 4);

-- Insert sample authors
INSERT INTO Authors (first_name, last_name, birth_year)
VALUES 
('Harper', 'Lee', 1926),
('George', 'Orwell', 1903),
('Jane', 'Austen', 1775),
('J.R.R.', 'Tolkien', 1892),
('J.D.', 'Salinger', 1919);

-- Link books with authors
INSERT INTO Book_Authors (book_id, author_id)
VALUES 
(1, 1), -- To Kill a Mockingbird - Harper Lee
(2, 2), -- 1984 - George Orwell
(3, 3), -- Pride and Prejudice - Jane Austen
(4, 4), -- The Hobbit - J.R.R. Tolkien
(5, 5); -- The Catcher in the Rye - J.D. Salinger

-- Insert sample borrowers
INSERT INTO Borrowers (first_name, last_name, email, phone, registration_date)
VALUES 
('John', 'Doe', 'john.doe@email.com', '123-456-7890', '2023-01-15'),
('Jane', 'Smith', 'jane.smith@email.com', '098-765-4321', '2023-02-20'),
('Bob', 'Johnson', 'bob.johnson@email.com', '555-555-5555', '2023-03-10');

-- Insert sample loans
INSERT INTO Loans (book_id, borrower_id, loan_date, due_date, return_date)
VALUES 
(4, 1, '2023-06-01', '2023-06-15', NULL), -- The Hobbit borrowed by John Doe
(4, 2, '2023-05-15', '2023-05-29', '2023-05-28'); -- The Hobbit borrowed and returned by Jane Smith