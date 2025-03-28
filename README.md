# Creating a university DataBase using MySQL

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white)

A university wants to track information about its academic organization.

---

### Entities

- Departments, offer multiple degree courses.
- Degree courses, belong to a single department, within them there are multiple courses and can be attended by multiple students.
- Teachers, can teach in multiple courses.
- Courses, are present in multiple degree courses and can be taught by multiple teachers. Each course has multiple exam sessions.
- Students, enrolled in a single degree course at a time.
- Student book, belongs to a single student.
- Exam sessions, are taken by multiple students.

---

### ER Diagram

In the ER diagram we can see all the relationships related to the tables.

- Yellow background (**One To Many**)
- Blue background (**One To One**)
- Purple background (**Many To Many**)

![ER-diagram](./img/ER-diagram.jpeg)

---

### Download

If you plan to download the project, the ER diagram .drawio will also be present. The sql code can be found in the sql folder, which will be divided into 3 files:
- **DDL** (Data Definition Language), for creating the database
- **DML** (Data Manipulation Language), to populate the database tables.
- **DQL** (Data Query Language), queries to extract specific information from multiple tables at the same time.