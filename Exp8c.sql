-- CREATING PROCEDURE
CREATE OR REPLACE PROCEDURE display_employee (p_employee_id IN NUMBER) IS
    v_first_name employees.first_name%TYPE;
    v_last_name  employees.last_name%TYPE;
    v_salary     employees.salary%TYPE;
BEGIN
    SELECT first_name, last_name, salary
      INTO v_first_name, v_last_name, v_salary
      FROM employees
     WHERE employee_id = p_employee_id;

    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_first_name || ' ' || v_last_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with ID ' || p_employee_id);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
