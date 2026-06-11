-- CREATE TABLES

CREATE TABLE departments
(
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50)
);

CREATE TABLE teachers
(
    teacher_id NUMBER PRIMARY KEY,
    teacher_name VARCHAR2(50),
    department_id NUMBER
);

CREATE TABLE subject_areas
(
    subject_id NUMBER PRIMARY KEY,
    subject_name VARCHAR2(50),
    teacher_id NUMBER
);

-- INSERT DATA

INSERT INTO departments VALUES (10, 'Computer Science');
INSERT INTO departments VALUES (20, 'Mathematics');

INSERT INTO teachers VALUES (101, 'Jeon', 10);
INSERT INTO teachers VALUES (102, 'Jungkook', 20);

INSERT INTO subject_areas VALUES (1001, 'Database', 101);
INSERT INTO subject_areas VALUES (1002, 'Networking', 101);
INSERT INTO subject_areas VALUES (1003, 'JAVA', 102);


-- DISPLAY DATA BEFORE DELETE

SELECT * FROM departments;

SELECT * FROM teachers;

SELECT * FROM subject_areas;

-- PROCEDURE WITH PARAMETER

CREATE OR REPLACE PROCEDURE proc_delete_subject
(
    in_subject_id IN subject_areas.subject_id%TYPE
)
IS
BEGIN
    DELETE FROM subject_areas
    WHERE subject_id = in_subject_id;

    DBMS_OUTPUT.PUT_LINE('Record Deleted Successfully');
END proc_delete_subject;
/

-- EXECUTE PROCEDURE

BEGIN
    proc_delete_subject(1002);
END;
/

-- DISPLAY DATA AFTER DELETE

SELECT * FROM subject_areas;