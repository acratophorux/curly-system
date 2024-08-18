import sqlite3
from tabulate import tabulate

class LibraryManagementSystem:
    def __init__(self, db_name):
        self.conn = sqlite3.connect(db_name)
        self.cursor = self.conn.cursor()

    def execute_query(self, query, params=None):
        if params:
            self.cursor.execute(query, params)
        else:
            self.cursor.execute(query)
        return self.cursor.fetchall()

    def print_results(self, results, headers):
        print(tabulate(results, headers=headers, tablefmt="grid"))

    def available_books(self):
        query = "SELECT * FROM available_books"
        results = self.execute_query(query)
        self.print_results(results, ["Title", "ISBN", "Genre", "Available Copies"])

    def overdue_loans(self):
        query = "SELECT * FROM overdue_loans"
        results = self.execute_query(query)
        self.print_results(results, ["Title", "First Name", "Last Name", "Due Date", "Days Overdue"])

    def popular_books(self):
        query = "SELECT * FROM book_popularity LIMIT 5"
        results = self.execute_query(query)
        self.print_results(results, ["Title", "Borrow Count"])

    def add_book(self, title, isbn, publication_year, genre, total_copies):
        query = """
        INSERT INTO Books (title, isbn, publication_year, genre, total_copies, available_copies)
        VALUES (?, ?, ?, ?, ?, ?)
        """
        self.execute_query(query, (title, isbn, publication_year, genre, total_copies, total_copies))
        self.conn.commit()
        print(f"Book '{title}' added successfully.")

    def close(self):
        self.conn.close()

def main():
    lms = LibraryManagementSystem('library.db')
    
    while True:
        print("\nLibrary Management System")
        print("1. View Available Books")
        print("2. View Overdue Loans")
        print("3. View Popular Books")
        print("4. Add New Book")
        print("5. Exit")
        
        choice = input("Enter your choice (1-5): ")
        
        if choice == '1':
            lms.available_books()
        elif choice == '2':
            lms.overdue_loans()
        elif choice == '3':
            lms.popular_books()
        elif choice == '4':
            title = input("Enter book title: ")
            isbn = input("Enter ISBN: ")
            year = int(input("Enter publication year: "))
            genre = input("Enter genre: ")
            copies = int(input("Enter number of copies: "))
            lms.add_book(title, isbn, year, genre, copies)
        elif choice == '5':
            break
        else:
            print("Invalid choice. Please try again.")
    
    lms.close()
    print("Thank you for using the Library Management System!")

if __name__ == "__main__":
    main()