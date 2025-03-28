DROP DATABASE IF EXISTS db_university;
CREATE DATABASE db_university;
USE db_university;

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
    FOREIGN KEY (department_id) REFERENCES Departments(id) ON DELETE CASCADE
);

CREATE TABLE Courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    cfu INT NOT NULL
);

CREATE TABLE Course_in_degree_course (
    course_id INT NOT NULL,
    degree_course_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES Courses(id) ON DELETE CASCADE,
    FOREIGN KEY (degree_course_id) REFERENCES Degree_courses(id) ON DELETE CASCADE
);

CREATE TABLE Teachers_in_courses (
    teacher_id INT NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Courses(id) ON DELETE CASCADE
);

CREATE TABLE Teachers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    teacher_name VARCHAR(255) NOT NULL,
    teacher_surname VARCHAR(255) NOT NULL,
    specialization VARCHAR(255) NOT NULL
    FOREIGN KEY (course_id) REFERENCES Courses(id) ON DELETE CASCADE
);

CREATE TABLE Exam_appeals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    exam_appeal_date DATE NOT NULL,
    FOREIGN KEY (course_id) REFERENCES Courses(id) ON DELETE CASCADE
);

CREATE TABLE Students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    degree_course_id INT NOT NULL,
    student_name VARCHAR(255) NOT NULL,
    student_surname VARCHAR(255) NOT NULL,
    phone_number VARCHAR(12) NOT NULL,
    email VARCHAR(50) NOT NULL,
    birthday_date DATE NOT NULL,
    FOREIGN KEY (degree_course_id) REFERENCES Degree_courses(id) ON DELETE CASCADE
);

CREATE TABLE Students_in_exams_appeals (
    student_id INT NOT NULL,
    exam_appeals_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(id) ON DELETE CASCADE,
    FOREIGN KEY (exam_appeals_id) REFERENCES Exam_appeals(id) ON DELETE CASCADE
);

CREATE TABLE Students_record_book (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    exam_appeals_id INT NOT NULL,
    grade DECIMAL NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(id) ON DELETE CASCADE,
    FOREIGN KEY (exam_appeals_id) REFERENCES Exam_appeals(id) ON DELETE CASCADE
);
