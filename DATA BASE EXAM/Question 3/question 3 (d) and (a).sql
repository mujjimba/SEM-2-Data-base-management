

 (a)   TV Series
    Episode
    Actor
    Director





(i) Primary Key:
A primary key is a special type of attribute in a database table that uniquely identifies each record (or row) in that table. It ensures that each record in the table can be uniquely identified and accessed. Primary keys must have unique values and cannot contain NULL values.

Example:
Consider a table named "Students" with attributes such as "student_id," "name," and "age." If we designate "student_id" as the primary key, it means that each student in the table can be uniquely identified by their student ID. No two students can have the same student ID, and the student ID for each record must be unique.

sql

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

In this example, the "student_id" attribute serves as the primary key for the "Students" table.

(ii) Foreign Key:
A foreign key is an attribute (or a set of attributes) in a table that refers to the primary key of another table. It establishes a relationship between two tables by enforcing referential integrity, ensuring that the values in the foreign key column correspond to values in the primary key column of the referenced table.

Example:
Consider two tables, "Students" and "Courses." Each student can enroll in multiple courses, and each course can have multiple students enrolled. To represent this relationship, we can use a foreign key in the "Courses" table that references the primary key of the "Students" table.

sql

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);