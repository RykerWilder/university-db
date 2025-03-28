--Full details of exams taken by students
SELECT 
    Students.student_name, 
    Students.student_surname,
    Degree_courses.degree_course_name,
    Courses.course_name,
    Exam_appeals.exam_appeal_date,
    Students_record_book.grade
FROM Students
INNER JOIN Degree_courses ON Students.degree_course_id = Degree_courses.id
INNER JOIN Students_record_book ON Students.id = Students_record_book.student_id
INNER JOIN Exam_appeals ON Students_record_book.exam_appeals_id = Exam_appeals.id
INNER JOIN Courses ON Exam_appeals.course_id = Courses.id
ORDER BY Students.student_surname, Exam_appeals.exam_appeal_date;

--Find all exams taken by a specific student
SELECT Courses.course_name, Exam_appeals.exam_appeal_date, Students_record_book.grade
FROM Students
INNER JOIN Students_record_book ON Students.id = Students_record_book.student_id
INNER JOIN Exam_appeals ON Students_record_book.exam_appeals_id = Exam_appeals.id
INNER JOIN Courses ON Exam_appeals.course_id = Courses.id
WHERE Students.student_name = 'Luca' AND Students.student_surname = 'Gialli'
ORDER BY Exam_appeals.exam_appeal_date;

--Count the number of courses
SELECT COUNT(*) AS numero_corsi 
FROM Courses;

--List of teachers with their specialization
SELECT teacher_surname, teacher_name, specialization
FROM Teachers
ORDER BY teacher_surname;

--Students born after January 1, 2000
SELECT student_name, student_surname, birthday_date 
FROM Students 
WHERE birthday_date > '2000-01-01'
ORDER BY birthday_date;

--Courses with more than 9 CFU
SELECT course_name, cfu 
FROM Courses 
WHERE cfu > 9
ORDER BY cfu DESC;

--Average CFU of all courses
SELECT AVG(cfu) AS media_cfu 
FROM Courses;