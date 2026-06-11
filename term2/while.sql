--print num 1 to 10
DECLARE
    num NUMBER := 1;
BEGIN
    WHILE num <= 10 LOOP
        DBMS_OUTPUT.PUT_LINE(num);
        num := num + 1;
    END LOOP;
END;
/