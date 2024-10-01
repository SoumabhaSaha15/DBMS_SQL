CL SCR;
set serveroutput on;
declare
    num1 number(10);
    num2 number(10);
    num3 number(10);
    
begin
    num1 := &num1;
    num2 := &num2;
    num3 := num1+num2;
    DBMS_OUTPUT.PUT_LINE('sum = '||num3);
end;
/
