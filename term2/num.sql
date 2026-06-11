-- This program prints numbers from 1 to 5, but replaces 3 with the word “Three”.

DECLARE
    num NUMBER := 1;
BEGIN
    LOOP

        IF num = 3 THEN
            DBMS_OUTPUT.PUT_LINE('Three');
        ELSE
            DBMS_OUTPUT.PUT_LINE(num);
        END IF;

        num := num + 1;

        EXIT WHEN num > 5;
    END LOOP;
END;
/