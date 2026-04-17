-- Teaching queries
-- Run after insert_data.sql

SET DEFINE OFF;

PROMPT === SELECT example ===
SELECT student_id, first_name, last_name, email
FROM students
ORDER BY student_id;

PROMPT === INSERT example ===
INSERT INTO students (first_name, last_name, email, age, department_id)
VALUES ('Hind', 'Ziani', 'hind@demo.com', 23, 2);

SELECT student_id, first_name, last_name, email
FROM students
WHERE email = 'hind@demo.com';

PROMPT === UPDATE example ===
UPDATE students
SET age = 24
WHERE email = 'hind@demo.com';

SELECT student_id, first_name, age
FROM students
WHERE email = 'hind@demo.com';

PROMPT === DELETE example ===
DELETE FROM students
WHERE email = 'hind@demo.com';

SELECT student_id, first_name, last_name
FROM students
ORDER BY student_id;

PROMPT === JOIN example ===
SELECT s.first_name || ' ' || s.last_name AS student_name,
       d.department_name,
       c.course_name,
       e.enrolled_on
FROM enrollments e
JOIN students s ON s.student_id = e.student_id
JOIN courses c ON c.course_id = e.course_id
LEFT JOIN departments d ON d.department_id = s.department_id
ORDER BY student_name;

PROMPT === Constraints example (commented) ===
-- If you run this, Oracle should return error because age < 16
-- INSERT INTO students (first_name, last_name, email, age, department_id)
-- VALUES ('Test', 'TooYoung', 'young@demo.com', 12, 1);

PROMPT === Index usage query ===
SELECT student_id, first_name, last_name
FROM students
WHERE last_name = 'Alaoui';

PROMPT === View example ===
CREATE OR REPLACE VIEW v_student_courses AS
SELECT s.student_id,
       s.first_name,
       s.last_name,
       c.course_name
FROM enrollments e
JOIN students s ON s.student_id = e.student_id
JOIN courses c ON c.course_id = e.course_id;

SELECT *
FROM v_student_courses
ORDER BY student_id, course_name;

COMMIT;
