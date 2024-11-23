-- Createin tables

-- ...........student table.............
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50),
    age INTEGER check (age > 0),
    email VARCHAR(70) UNIQUE NOT NULL,
    frontend_mark INTEGER check(frontend_mark between 0 and 100),
    backend_mark INTEGER check(backend_mark between 0 and 100),
    status VARCHAR(10)
)

-- ............courses table.............

CREATE Table courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credits INTEGER check(credits>0)
)

-- ............enrolement table............
CREATE Table enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(student_id) on delete CASCADE,
    course_id INTEGER REFERENCES courses(course_id) on delete CASCADE
)





-- inserting Data........

INSERT INTO students (student_name, age, email, frontend_mark, backend_mark, status)
VALUES
('Sameer', 21, 'sameer@example.com', 48, 60, NULL),
('Zoya', 23, 'zoya@example.com', 52, 58, NULL),
('Nabil', 22, 'nabil@example.com', 37, 46, NULL),
('Rafi', 24, 'rafi@example.com', 41, 40, NULL),
('Sophia', 22, 'sophia@example.com', 50, 52, NULL),
('Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);



INSERT INTO courses (course_name, credits)
VALUES
('Next.js', 3),
('React.js', 4),
('Databases', 3),
('Prisma', 3);


INSERT INTO enrollment (student_id, course_id)
VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 2);



SELECT * FROM enrollment
JOIN students USING(student_id)
JOIN courses USING(course_id)
