-- Final Assessment Test
--
-- Create a new database called "School" this database should
-- have two tables: teachers and students.
--
-- The students table should have columns for student_id, first_name,
-- last_name, homeroom_number, phone,email, and graduation year.
--
-- The teachers table should have columns for teacher_id, first_name,
-- last_name, homeroom_number, department, email, and phone.
--
-- The constraints are mostly up to you, but your table constraints do
-- have to consider the following:
--
-- - We must have a phone number to contact students in case of an emergency.
-- - We must have ids as the primary key of the tables
-- - Phone numbers and emails must be unique to the individual.
--
-- Once you've made the tables, insert a student named Mark Watney
-- (student_id=1) who has a phone number of 777-555-1234 and doesn't have an
-- email. He graduates in 2035 and has 5 as a homeroom number.
-- 
-- Then insert a teacher names Jonas Salk (teacher_id = 1) who as a homeroom
-- number of 5 and is from the Biology department. His contact info is:
-- jsalk@school.org and a phone number of 777-555-4321.

CREATE DATABASE School;

DROP TABLE IF EXISTS students;
CREATE TABLE IF NOT EXISTS students(
    student_id serial PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64)NOT NULL,
    homeroom_number INTEGER UNIQUE,
    phone VARCHAR(12) NOT NULL UNIQUE,
    email VARCHAR(255) UNIQUE,
    graduation_year INTEGER CHECK(graduation_year > 2020)
);

DROP TABLE IF EXISTS teachers;
CREATE TABLE IF NOT EXISTS teachers(
    teacher_id serial PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    homeroom_number INTEGER UNIQUE,
    departament VARCHAR(128) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(12) NOT NULL UNIQUE
);

INSERT INTO students (first_name,last_name,phone,homeroom_number,graduation_year)
VALUES ('Mark','Watney','777-555-1234',5,2035);

INSERT INTO teachers (first_name,last_name,phone,homeroom_number,departament)
VALUES ('Jonas','Salk','777-555-4321',5,'Biology');
