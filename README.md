# Oracle Database B Darija + English 🇲🇦

A beginner-friendly repo bach t3allem Oracle Database step by step.
Style hna simple: Darija explanation + English technical terms.

## Why this repo? ✨
- Kat3allem Oracle b tariqa sahla.
- Katfhem SQL basics w advanced topics.
- Katb9a 3andk real scripts t9der tjarrabhom.

## Project Structure

```text
Oracle Bdarija/
|- README.md
|- scripts/
|  |- create_tables.sql
|  |- insert_data.sql
|  `- queries.sql
|- examples/
|  `- challenges.sql
`- docs/
  `- oracle_xe_install.md
```

## 1) Introduction
Hna ghadi n3arfo chno howa Oracle Database.
Oracle Database hiya system li kaystore data b safe way.
Data katkon mratba f tables.
B SQL commands, t9der tcreate, tinsert, tupdate, tdelete data.

## 2) Installation (Oracle XE)
Simple steps bach tbda:

1. Download Oracle Database XE mn official Oracle website.
2. Run installer w kammel Next -> Next.
3. Hfed password dyal `SYSTEM` user mzyan.
4. Default port ghaliban howa `1521`.
5. Open SQL Developer aw SQLcl bash tconnect.

Example connection (SQLcl / SQL*Plus):

```sql
sqlplus system/YourPassword@localhost:1521/XEPDB1
```

Ila tconnectiti b nejah, nta ready.

## 3) Tables
Hna tables f Oracle.
Table hiya b7al tableau fin kan7to data rows and columns.

### Example: CREATE TABLE

```sql
CREATE TABLE students (
  student_id NUMBER PRIMARY KEY,
  first_name VARCHAR2(50) NOT NULL,
  last_name  VARCHAR2(50) NOT NULL,
  email      VARCHAR2(100) UNIQUE,
  created_at DATE DEFAULT SYSDATE
);
```

What happens:
- Oracle kaycreate table smitha `students`.
- `PRIMARY KEY` kayman3 duplicate IDs.
- `NOT NULL` kayfrod 3la field ykoun ma3mar.

## 4) Basic SQL

### A) SELECT
Short explanation:
SELECT katjib data mn table.

```sql
SELECT first_name, last_name
FROM students;
```

What happens:
Oracle kaydisplay students names.

### B) INSERT
Short explanation:
INSERT katzid row jdida.

```sql
INSERT INTO students (student_id, first_name, last_name, email)
VALUES (1, 'Yassine', 'Alaoui', 'yassine@demo.com');
```

What happens:
Row jdida ttzadat f `students`.

### C) UPDATE
Short explanation:
UPDATE katbeddel data kayna.

```sql
UPDATE students
SET email = 'y.a@demo.com'
WHERE student_id = 1;
```

What happens:
Email dyal student id 1 tbadel.

### D) DELETE
Short explanation:
DELETE katm7i row mn table.

```sql
DELETE FROM students
WHERE student_id = 1;
```

What happens:
Had row katm7a mn table.

## 5) Advanced SQL

### A) JOIN
Short explanation:
JOIN katrbat bin juj tables bach tjib data mkhalta.

```sql
SELECT s.first_name, c.course_name
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses  c ON e.course_id = c.course_id;
```

What happens:
Katban lik smit student m3a smit course.

### B) Constraints
Short explanation:
Constraints rules li kay7afdo quality dyal data.

Examples:
- `PRIMARY KEY`
- `FOREIGN KEY`
- `UNIQUE`
- `CHECK`

What happens:
Ila data mkhalfa rule, Oracle kayrj3 error.

### C) Index
Short explanation:
Index kay3awn query twli sra3.

```sql
CREATE INDEX idx_students_last_name
ON students(last_name);
```

What happens:
Search b `last_name` kaywli often faster.

### D) Views
Short explanation:
View hiya saved SELECT.

```sql
CREATE OR REPLACE VIEW v_students_basic AS
SELECT student_id, first_name, last_name
FROM students;
```

What happens:
T9der tquery view bhal table:

```sql
SELECT * FROM v_students_basic;
```

## Run the scripts 🚀
From your SQL tool, run had order:

1. `@scripts/create_tables.sql`
2. `@scripts/insert_data.sql`
3. `@scripts/queries.sql`

## Run Mini Project (5 minutes) ⏱️
Ila bghiti practice sra3, dir had steps:

1. Run base setup:
  - `@scripts/create_tables.sql`
  - `@scripts/insert_data.sql`
2. Open mini project starter:
  - `examples/challenges.sql`
3. Run SQL blocks step by step (Step 1 -> Step 6).
4. Check final output mn query:
  - `SELECT * FROM v_teacher_courses ORDER BY teacher_id, course_id;`

Expected result:
- Teachers table mcreateya.
- Courses mrboutin b teachers.
- View `v_teacher_courses` khdama.

## Exercises 🧠
- Try this: create your own table `teachers`.
- Zid `CHECK` constraint for age (`age >= 18`).
- Dir `JOIN` bin `teachers` w `departments`.

## Small Challenges 🎯
- Challenge 1: Jib ghir students li kaynin f department "Computer Science".
- Challenge 2: Count ch7al mn student f kol course.
- Challenge 3: Sna3 view katban full student info.

## Short Project: Mini Student Management 🛠️
Hna ghadi tdir mini project sghir bach tapply Oracle basics + advanced.

Goal:
- Build simple system kaymanage students, courses, w enrollments.

What to do:
1. Create table jdida smitha `teachers`.
2. Add `teacher_id` f `courses` as `FOREIGN KEY`.
3. Insert 3 teachers + 2 courses lkol teacher.
4. Write query katjib:
  - teacher name
  - course count
5. Create view smitha `v_teacher_courses`.

Expected output:
- Table design mzyan.
- Clean INSERT data.
- JOIN + GROUP BY query khdama.
- Reusable view t9der tqueryha anytime.

## Tips 💡
- Bda b small queries, matjme3ch kolchi f query wa7da.
- St3mel clear names bhal `student_id`, `course_name`.
- Dima dir `WHERE` mlli katdir `UPDATE` aw `DELETE`.
- Save scripts dialk, ma tkhallihomch random f terminal.

## Final Note
Ila fhemti had repo, rak banlik base mzyana f Oracle.
Step jaya: practice daily, hit SQL kayt7ssen b practice.

## Author
Hamza Labbaalli
