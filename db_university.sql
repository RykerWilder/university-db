DROP DATABASE IF EXISTS university;
CREATE DATABASE university;
USE university;

CREATE TABLE Departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL,
    head_office VARCHAR(255)
);

CREATE TABLE Degree_courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    department_id INT NOT NULL,
    degree_course_name VARCHAR(255) NOT NULL,
    degree_course_subject VARCHAR(255),
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);

CREATE TABLE Courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    cfu INT NOT NULL
)

CREATE TABLE Teachers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    teacher_name VARCHAR(255) NOT NULL,
    teacher_surname VARCHAR(255) NOT NULL,
    specialization VARCHAR(255) NOT NULL
    FOREIGN KEY (course_id) REFERENCES Courses(id)
)

CREATE TABLE Exam_appeals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    exam_appeal_date DATE NOT NULL,
    --session
    FOREIGN KEY (course_id) REFERENCES Courses(id)
);

CREATE TABLE Students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    degree_course_id INT NOT NULL,
    student_name VARCHAR(255) NOT NULL,
    student_surname VARCHAR(255) NOT NULL,
    phone_number VARCHAR(12) NOT NULL,
    email VARCHAR(50) NOT NULL,
    birthday_date DATE NOT NULL,
    FOREIGN KEY (degree_course_id) REFERENCES Degree_courses(id)
)