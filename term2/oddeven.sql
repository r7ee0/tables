-- This program checks whether numbers from 1 to 5 are even or odd.

DECLARE
    num NUMBER := 1;
BEGIN
    LOOP

        IF MOD(num, 2) = 0 THEN
            DBMS_OUTPUT.PUT_LINE(num || ' Even');
        ELSE
            DBMS_OUTPUT.PUT_LINE(num || ' Odd');
        END IF;

        num := num + 1;

        EXIT WHEN num > 5;
    END LOOP;
END;
/