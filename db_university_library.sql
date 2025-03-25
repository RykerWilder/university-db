DROP DATABASE IF EXISTS university_library;
CREATE DATABASE university_library;
USE university_library;

CREATE TABLE Categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    category_description TEXT
);

CREATE TABLE Authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(50) NOT NULL,
    author_surname VARCHAR(50) NOT NULL,
    author_biography TEXT,
    birthday_date DATE
);

CREATE TABLE Books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50),
    year_of_publication INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(id)
);

CREATE TABLE Books_Authors (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Books(id),
    FOREIGN KEY (author_id) REFERENCES Authors(id)
);

CREATE TABLE Students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    student_surname VARCHAR(50) NOT NULL,
    student_email VARCHAR(100) UNIQUE,
    student_phone_number VARCHAR(15),
    registration_date DATE
);

CREATE TABLE Loans (
    id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    student_id INT,
    loan_date DATE NOT NULL,
    return_date DATE,
    loan_status ENUM('active', 'concluded', 'late') DEFAULT 'active',
    FOREIGN KEY (book_id) REFERENCES Books(id),
    FOREIGN KEY (student_id) REFERENCES Students(id)
);