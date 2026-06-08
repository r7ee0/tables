-- This program prints multiplication of numbers by 2.

DECLARE
    num NUMBER := 2;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(num * 2);

        num := num + 1;

        EXIT WHEN num > 6;
    END LOOP;
END;
/