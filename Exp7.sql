-- DECLARING VARIABLES
DECLARE
    acct_no NUMBER(5);
    acct_name VARCHAR(50);
    acct_balance NUMBER(5);
    acct_deposit number(3);
    acct_withdraw NUMBER(3);

-- STARTING MAIN PROGRAM
BEGIN
    -- taking inputs
    acct_no := 10011;
    acct_name := 'Raju Kumar';
    acct_balance := 10000;

    -- conditional statements
    IF (acct_balance < 10000) THEN
        acct_deposit := 100;
        acct_withdraw := 10;
    
    ELSE 
        acct_deposit := 50;
        acct_withdraw := 5;
    
    END IF;

    DBMS_OUTPUT.PUT_LINE('Account Number : ' || acct_no);
    DBMS_OUTPUT.PUT_LINE('Account Name : ' || acct_name);
    DBMS_OUTPUT.PUT_LINE('Balance Amount : ' || acct_balance);
    DBMS_OUTPUT.PUT_LINE('');

    -- loop statements
    FOR i IN 1..3 LOOP
        DBMS_OUTPUT.PUT_LINE('Amount Deposited : ' || acct_deposit);
        acct_balance := acct_balance + acct_deposit;
        DBMS_OUTPUT.PUT_LINE('Balance Amount : ' || acct_balance);
        acct_balance := acct_balance - acct_withdraw;
        DBMS_OUTPUT.PUT_LINE('Amount Withdrawn : ' || acct_withdraw);
        DBMS_OUTPUT.PUT_LINE('Balance Amount : ' || acct_balance);

    END LOOP;

END;
-- ENDING MAIN PROGRAM
/
