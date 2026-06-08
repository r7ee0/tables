-- This program prints numbers from 1 to 5 using a basic loop.

DECLARE
    num NUMBER := 1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(num);

        num := num + 1;

        EXIT WHEN num > 5;
    END LOOP;
END;
/