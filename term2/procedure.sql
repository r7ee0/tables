--create table

CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50)
);

CREATE TABLE teachers (
    teacher_id NUMBER PRIMARY KEY,
    teacher_name VARCHAR2(50),
    department_id NUMBER,
    CONSTRAINT fk_teacher_dept
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

CREATE TABLE subject_areas (
    subject_id NUMBER PRIMARY KEY,
    subject_name VARCHAR2(100)
);

--insert Data

INSERT INTO departments VALUES (1, 'Computer Science');
INSERT INTO departments VALUES (2, 'Mathematics');

INSERT INTO teachers VALUES (101, 'John Smith', 1);
INSERT INTO teachers VALUES (102, 'Jane Doe', 2);


--create sequence

CREATE SEQUENCE seq_subject_id
START WITH 1
INCREMENT BY 1;

--create procedure

CREATE OR REPLACE PROCEDURE proc_add_subject
IS
    vc_subject_name subject_areas.subject_name%TYPE := 'DBMS';
BEGIN
    INSERT INTO subject_areas
    VALUES ( seq_subject_id.NEXTVAL, vc_subject_name );
END proc_add_subject;
/

--execute procedure

BEGIN
    proc_add_subject;
END;
/

--display data 

SELECT * FROM departments;

SELECT * FROM teachers;

SELECT * FROM subject_areas;