SET SERVEROUTPUT ON;

-- MAIN PROGRAM
BEGIN
    FOR i IN 1..4 LOOP
        display_employee(i);
    END LOOP;
END;
/