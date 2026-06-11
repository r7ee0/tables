BEGIN
    FOR vn_another_counter IN REVERSE 1..4 LOOP
        DBMS_OUTPUT.PUT_LINE('LOOP number ' || vn_another_counter);
    END LOOP;
END;
/