-- Inserimento dipartimenti
INSERT INTO Departments (department_name, head_office) VALUES 
('Informatica', 'Edificio A, Piano 2'),
('Matematica', 'Edificio B, Piano 1'),
('Fisica', 'Edificio C, Piano 3');

-- Inserimento corsi di laurea
INSERT INTO Degree_courses (department_id, degree_course_name, degree_course_subject) VALUES 
(1, 'Informatica', 'Triennale'),
(1, 'Computer Science', 'Magistrale'),
(2, 'Matematica', 'Triennale'),
(3, 'Fisica', 'Triennale');

-- Inserimento corsi
INSERT INTO Courses (course_name, cfu) VALUES 
('Programmazione I', 12),
('Basi di Dati', 9),
('Analisi Matematica I', 12),
('Fisica Generale', 12),
('Algoritmi e Strutture Dati', 9),
('Machine Learning', 6);

-- Inserimento insegnanti
INSERT INTO Teachers (teacher_name, teacher_surname, specialization) VALUES 
('Mario', 'Rossi', 'Informatica'),
('Luigi', 'Bianchi', 'Matematica'),
('Anna', 'Verdi', 'Fisica'),
('Giulia', 'Neri', 'Intelligenza Artificiale');

-- Associazione insegnanti-corsi
INSERT INTO Teachers_in_courses (teacher_id, course_id) VALUES 
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 6),
(1, 5);

-- Associazione corsi-corsi di laurea
INSERT INTO Course_in_degree_course (course_id, degree_course_id) VALUES 
(1, 1),
(2, 1),
(3, 1),
(3, 3),
(4, 1),
(4, 4),
(5, 1),
(5, 2),
(6, 2);

-- Inserimento studenti
INSERT INTO Students (degree_course_id, student_name, student_surname, phone_number, email, birthday_date) VALUES 
(1, 'Luca', 'Gialli', '1234567890', 'luca@email.com', '2000-05-15'),
(1, 'Sara', 'Blu', '2345678901', 'sara@email.com', '2001-07-22'),
(2, 'Paolo', 'Viola', '3456789012', 'paolo@email.com', '1999-11-30'),
(3, 'Elena', 'Rosa', '4567890123', 'elena@email.com', '2000-03-10');

-- Inserimento appelli d'esame
INSERT INTO Exam_appeals (course_id, exam_appeal_date) VALUES 
(1, '2023-06-15'),
(1, '2023-07-10'),
(2, '2023-06-20'),
(3, '2023-06-25'),
(4, '2023-07-05');

-- Iscrizione studenti agli appelli
INSERT INTO Students_in_exams_appeals (student_id, exam_appeals_id) VALUES 
(1, 1),
(1, 3),
(2, 1),
(3, 4),
(4, 5);

-- Registrazione voti
INSERT INTO Students_record_book (student_id, exam_appeals_id, grade) VALUES 
(1, 1, 28.5),
(1, 3, 25.0),
(2, 1, 30.0),
(3, 4, 18.0),
(4, 5, 27.5);