--print num 1 to 10
BEGIN
    FOR num IN 1..10 LOOP --for collection type we use FOR ALL
        DBMS_OUTPUT.PUT_LINE(num);
    END LOOP;
END;
/
