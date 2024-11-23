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
    student_id
)