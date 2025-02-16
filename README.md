# LibraryApp: A Book Lending Library Application

This is a simple book lending library application built with **Ruby on Rails 8**. The application allows registered users to browse available books, borrow books, return books, and view a list of books they currently have borrowed.

---

## Features
- **User Registration and Authentication**: Implemented using Rails 8's default authentication system.
- **Book Management**:
  - Book listing page with availability status.
  - Book details page with the ability to borrow if available.
- **Borrowing System**:
  - Users can borrow books, creating a borrowing record.
  - Each borrowing record includes a due date (2 weeks from borrowing date).
- **User Profile**:
  - Displays all currently borrowed books.
  - Ability to return borrowed books.
- **Model Validations**:
  - Title, author, and ISBN presence.
  - Unique ISBN for each book.
- **Error Handling**:
  - Prevent borrowing of an already borrowed book.
- **Tests**:
  - Written using the default Rails testing framework for models, controllers, and views.
- **Structured Views**: Clean and well-organized user interface.

---

## Setup Instructions

### Prerequisites
- Ruby 3.2.2 or higher
- Rails 8.0.1 or higher
- PostgreSQL or SQLite installed

### Steps to Setup
1. **Clone the repository**:
   ```bash
   git clone https://github.com/Malombe-dev/library_app/tree/main
   cd library_app
   ```
2. **Install dependencies**:
   ```bash
   bundle install
   ```
3. **Setup the database**:
   ```bash
   rails db:create
   rails db:migrate
   ```
4. **Start the server**:
   ```bash
   rails server
   ```
5. **Visit the application**:
   Open [http://localhost:3000](http://localhost:3000) in your browser.

---

## Running Tests

To run the test suite, execute:
```bash
rails test
```

---

## Deployment

For deployment, ensure all environment variables are correctly set and use tools like Heroku for easy deployment.

---

## GitHub Repository

Repository URL: [GitHub Repository](https://github.com/Malombe-dev/library_app/tree/main)

Please visit the repository for more details, commits, and code structure.

---

## License

This project is licensed under the MIT License.

---

**Happy Coding!** 🎉

