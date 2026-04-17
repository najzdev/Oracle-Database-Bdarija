-- Insert sample data
-- Run after create_tables.sql

SET DEFINE OFF;

INSERT INTO departments (department_id, department_name)
VALUES (1, 'Computer Science');

INSERT INTO departments (department_id, department_name)
VALUES (2, 'Business');

INSERT INTO departments (department_id, department_name)
VALUES (3, 'Design');

INSERT INTO students (student_id, first_name, last_name, email, age, department_id)
VALUES (1, 'Yassine', 'Alaoui', 'yassine@demo.com', 21, 1);

INSERT INTO students (student_id, first_name, last_name, email, age, department_id)
VALUES (2, 'Salma', 'Bennani', 'salma@demo.com', 20, 2);

INSERT INTO students (student_id, first_name, last_name, email, age, department_id)
VALUES (3, 'Omar', 'Idrissi', 'omar@demo.com', 22, 1);

INSERT INTO students (student_id, first_name, last_name, email, age, department_id)
VALUES (4, 'Nora', 'Amrani', 'nora@demo.com', 19, 3);

INSERT INTO courses (course_id, course_name, department_id)
VALUES (1, 'SQL Fundamentals', 1);

INSERT INTO courses (course_id, course_name, department_id)
VALUES (2, 'Database Design', 1);

INSERT INTO courses (course_id, course_name, department_id)
VALUES (3, 'Marketing Basics', 2);

INSERT INTO courses (course_id, course_name, department_id)
VALUES (4, 'UI Principles', 3);

INSERT INTO enrollments (enrollment_id, student_id, course_id)
VALUES (1, 1, 1);

INSERT INTO enrollments (enrollment_id, student_id, course_id)
VALUES (2, 1, 2);

INSERT INTO enrollments (enrollment_id, student_id, course_id)
VALUES (3, 2, 3);

INSERT INTO enrollments (enrollment_id, student_id, course_id)
VALUES (4, 3, 1);

INSERT INTO enrollments (enrollment_id, student_id, course_id)
VALUES (5, 4, 4);

COMMIT;
