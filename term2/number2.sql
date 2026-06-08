-- This program prints numbers in descending order.

DECLARE
    num NUMBER := 10;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(num);

        num := num - 1;

        EXIT WHEN num < 6;
    END LOOP;
END;
/