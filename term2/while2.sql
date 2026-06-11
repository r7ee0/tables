DECLARE
    vn_counter NUMBER(3) := 0; --if we not initialize, the program run run without any output results (vn_counter NUMBER(3);) 
BEGIN
    WHILE 3 >= vn_counter LOOP
        DBMS_OUTPUT.PUT_LINE('Counter has not exceeded 3');
        vn_counter := vn_counter + 1;
    END LOOP;
END;
/