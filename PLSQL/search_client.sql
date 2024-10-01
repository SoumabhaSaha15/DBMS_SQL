
set serveroutput on;
declare    
    name CLIENT_MASTER.NAME%TYPE;
    id CLIENT_MASTER.CLIENTNO%TYPE;
begin
    SELECT NAME INTO name FROM CLIENT_MASTER WHERE CLIENTNO = &id;
    DBMS_OUTPUT.PUT_LINE(name);
end;
/