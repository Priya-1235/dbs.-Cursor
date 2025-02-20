declare

-- declare variable x, y 
-- and z of datatype number
   x number(5);             
   y number(5);            
   z number(7);        

begin

-- Here we Assigning 10 into x
   x:=10;                 

-- Assigning 20 into x
   y:=20;                 

-- Assigning sum of x and y into z
   z:=x+y;                 

-- Print the Result
   dbms_output.put_line('Sum is '||z); 
end; 
/                         
-- Program End
Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

Install the latest PowerShell for new features and improvements! https://aka.ms/PSWindows

PS C:\Users\ckuma> sqlplus system

SQL*Plus: Release 21.0.0.0.0 - Production on Thu Feb 20 10:10:13 2025
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter password:
Last Successful login time: Thu Feb 20 2025 10:09:11 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> set serveroutput on
SQL> @C:\Users\ckuma\Downloads\declare.sql
SP2-0310: unable to open file "C:\Users\ckuma\Downloads\declare.sql"
SQL> DECLARE
  2  /
DECLARE
      *
ERROR at line 1:
ORA-06550: line 1, column 7:
PLS-00103: Encountered the symbol "end-of-file" when expecting one of the
following:
begin function pragma procedure subtype type <an identifier>
<a double-quoted delimited-identifier> current cursor delete
exists prior


SQL> @C:\Users\ckuma\Downloads\declare.sql
SP2-0310: unable to open file "C:\Users\ckuma\Downloads\declare.sql"
SQL> @C:\Users\ckuma\Downloads\declare1.SQL
Sum is 30

PL/SQL procedure successfully completed.
PL/SQL procedure successfully completed.

SQL> DECLARE
  2     total_rows number(2);
  3  BEGIN
  4     UPDATE customers
  5     SET salary = salary + 500;
  6     IF sql%notfound THEN
  7        dbms_output.put_line('no customers selected');
  8     ELSIF sql%found THEN
  9        total_rows := sql%rowcount;
 10        dbms_output.put_line( total_rows || ' customers selected ');
 11     END IF;
 12  END;
 13  /
   UPDATE customers
          *
ERROR at line 4:
ORA-06550: line 4, column 11:
PL/SQL: ORA-00942: table or view does not exist
ORA-06550: line 4, column 4:
PL/SQL: SQL Statement ignored


SQL> CREATE TABLE Customers (
  2    CustomerID INT PRIMARY KEY,
  3    FirstName VARCHAR(50),
  4    LastName VARCHAR(50)
  5  );

Table created.

SQL> DECLARE
  2     total_rows number(2);
  3  BEGIN
  4     UPDATE customers
  5     SET salary = salary + 500;
  6     IF sql%notfound THEN
  7        dbms_output.put_line('no customers selected');
  8     ELSIF sql%found THEN
  9        total_rows := sql%rowcount;
 10        dbms_output.put_line( total_rows || ' customers selected ');
 11     END IF;
 12  END;
 13  /
   SET salary = salary + 500;
                *
ERROR at line 5:
ORA-06550: line 5, column 17:
PL/SQL: ORA-00904: "SALARY": invalid identifier
ORA-06550: line 4, column 4:
PL/SQL: SQL Statement ignored


SQL> DROP TABLE Customers;

Table dropped.

SQL> CREATE TABLE customer (
  2      id NUMBER PRIMARY KEY,
  3      name VARCHAR2(50),
  4      age NUMBER,
  5      salary NUMBER(10,2),
  6      address VARCHAR2(100)
  7  );

Table created.

SQL>
SQL> INSERT INTO customer (id, name, age, salary, address) VALUES (1, 'Amit Kumar', 30, 50000.00, 'Delhi');

1 row created.

SQL> INSERT INTO customer (id, name, age, salary, address) VALUES (2, 'Rohit Sharma', 28, 60000.00, 'Mumbai');

1 row created.

SQL> INSERT INTO customer (id, name, age, salary, address) VALUES (3, 'Priya Verma', 35, 75000.00, 'Bangalore');

1 row created.

SQL> INSERT INTO customer (id, name, age, salary, address) VALUES (4, 'Suresh Raina', 40, 80000.00, 'Chennai');

1 row created.

SQL> INSERT INTO customer (id, name, age, salary, address) VALUES (5, 'Meena Joshi', 25, 45000.00, 'Pune');

1 row created.

SQL> INSERT INTO customer (id, name, age, salary, address) VALUES (6, 'Rajesh Singh', 32, 70000.00, 'Hyderabad');

1 row created.

SQL> INSERT INTO customer (id, name, age, salary, address) VALUES (7, 'Neha Kapoor', 27, 55000.00, 'Kolkata');

1 row created.

SQL> INSERT INTO customer (id, name, age, salary, address) VALUES (8, 'Vikram Rao', 38, 90000.00, 'Ahmedabad');

1 row created.

SQL> INSERT INTO customer (id, name, age, salary, address) VALUES (9, 'Pooja Das', 29, 48000.00, 'Jaipur');

1 row created.

SQL> INSERT INTO customer (id, name, age, salary, address) VALUES (10, 'Anil Mehta', 36, 82000.00, 'Chandigarh');

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

SQL>
SQL> SELECT * FROM customer;

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
    SALARY
----------
ADDRESS
--------------------------------------------------------------------------------
         1 Amit Kumar                                                 30
     50000
Delhi

         2 Rohit Sharma                                               28
     60000
Mumbai

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
    SALARY
----------
ADDRESS
--------------------------------------------------------------------------------

         3 Priya Verma                                                35
     75000
Bangalore

         4 Suresh Raina                                               40
     80000

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
    SALARY
----------
ADDRESS
--------------------------------------------------------------------------------
Chennai

         5 Meena Joshi                                                25
     45000
Pune

         6 Rajesh Singh                                               32

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
    SALARY
----------
ADDRESS
--------------------------------------------------------------------------------
     70000
Hyderabad

         7 Neha Kapoor                                                27
     55000
Kolkata


        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
    SALARY
----------
ADDRESS
--------------------------------------------------------------------------------
         8 Vikram Rao                                                 38
     90000
Ahmedabad

         9 Pooja Das                                                  29
     48000
Jaipur

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
    SALARY
----------
ADDRESS
--------------------------------------------------------------------------------

        10 Anil Mehta                                                 36
     82000
Chandigarh


10 rows selected.

SQL> set linesize 400
SQL> set pagesize 400
SQL> select * from customers;
select * from customers
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select * from customer;

        ID NAME                                                      AGE     SALARY ADDRESS
---------- -------------------------------------------------- ---------- ---------- ----------------------------------------------------------------------------------------------------
         1 Amit Kumar                                                 30      50000 Delhi
         2 Rohit Sharma                                               28      60000 Mumbai
         3 Priya Verma                                                35      75000 Bangalore
         4 Suresh Raina                                               40      80000 Chennai
         5 Meena Joshi                                                25      45000 Pune
         6 Rajesh Singh                                               32      70000 Hyderabad
         7 Neha Kapoor                                                27      55000 Kolkata
         8 Vikram Rao                                                 38      90000 Ahmedabad
         9 Pooja Das                                                  29      48000 Jaipur
        10 Anil Mehta                                                 36      82000 Chandigarh

10 rows selected.

SQL> set linesize 200
SQL> set page size 300
SP2-0158: unknown SET option "page"
SQL>  se
SP2-0042: unknown command "se" - rest of line ignored.
SQL> set linesize 200
SQL> set pagesize 300
SQL> select * from customer;

        ID NAME                                                      AGE     SALARY ADDRESS
---------- -------------------------------------------------- ---------- ---------- ----------------------------------------------------------------------------------------------------
         1 Amit Kumar                                                 30      50000 Delhi
         2 Rohit Sharma                                               28      60000 Mumbai
         3 Priya Verma                                                35      75000 Bangalore
         4 Suresh Raina                                               40      80000 Chennai
         5 Meena Joshi                                                25      45000 Pune
         6 Rajesh Singh                                               32      70000 Hyderabad
         7 Neha Kapoor                                                27      55000 Kolkata
         8 Vikram Rao                                                 38      90000 Ahmedabad
         9 Pooja Das                                                  29      48000 Jaipur
        10 Anil Mehta                                                 36      82000 Chandigarh

10 rows selected.

SQL> set linesize 100
SQL> set pagesize 100
SQL> select * from customer;

        ID NAME                                                      AGE     SALARY
---------- -------------------------------------------------- ---------- ----------
ADDRESS
----------------------------------------------------------------------------------------------------
         1 Amit Kumar                                                 30      50000
Delhi

         2 Rohit Sharma                                               28      60000
Mumbai

         3 Priya Verma                                                35      75000
Bangalore

         4 Suresh Raina                                               40      80000
Chennai

         5 Meena Joshi                                                25      45000
Pune

         6 Rajesh Singh                                               32      70000
Hyderabad

         7 Neha Kapoor                                                27      55000
Kolkata

         8 Vikram Rao                                                 38      90000
Ahmedabad

         9 Pooja Das                                                  29      48000
Jaipur

        10 Anil Mehta                                                 36      82000
Chandigarh


10 rows selected.

SQL> set pagesize 400
SQL> select * from customer;

        ID NAME                                                      AGE     SALARY
---------- -------------------------------------------------- ---------- ----------
ADDRESS
----------------------------------------------------------------------------------------------------
         1 Amit Kumar                                                 30      50000
Delhi

         2 Rohit Sharma                                               28      60000
Mumbai

         3 Priya Verma                                                35      75000
Bangalore

         4 Suresh Raina                                               40      80000
Chennai

         5 Meena Joshi                                                25      45000
Pune

         6 Rajesh Singh                                               32      70000
Hyderabad

         7 Neha Kapoor                                                27      55000
Kolkata

         8 Vikram Rao                                                 38      90000
Ahmedabad

         9 Pooja Das                                                  29      48000
Jaipur

        10 Anil Mehta                                                 36      82000
Chandigarh


10 rows selected.

SQL> set pagesize 150
SQL> select * from customer;

        ID NAME                                                      AGE     SALARY
---------- -------------------------------------------------- ---------- ----------
ADDRESS
----------------------------------------------------------------------------------------------------
         1 Amit Kumar                                                 30      50000
Delhi

         2 Rohit Sharma                                               28      60000
Mumbai

         3 Priya Verma                                                35      75000
Bangalore

         4 Suresh Raina                                               40      80000
Chennai

         5 Meena Joshi                                                25      45000
Pune

         6 Rajesh Singh                                               32      70000
Hyderabad

         7 Neha Kapoor                                                27      55000
Kolkata

         8 Vikram Rao                                                 38      90000
Ahmedabad

         9 Pooja Das                                                  29      48000
Jaipur

        10 Anil Mehta                                                 36      82000
Chandigarh


10 rows selected.

SQL> set pagesize 300
SQL> set linesize 150
SQL> select * from customer;

        ID NAME                                                      AGE     SALARY
---------- -------------------------------------------------- ---------- ----------
ADDRESS
----------------------------------------------------------------------------------------------------
         1 Amit Kumar                                                 30      50000
Delhi

         2 Rohit Sharma                                               28      60000
Mumbai

         3 Priya Verma                                                35      75000
Bangalore

         4 Suresh Raina                                               40      80000
Chennai

         5 Meena Joshi                                                25      45000
Pune

         6 Rajesh Singh                                               32      70000
Hyderabad

         7 Neha Kapoor                                                27      55000
Kolkata

         8 Vikram Rao                                                 38      90000
Ahmedabad

         9 Pooja Das                                                  29      48000
Jaipur

        10 Anil Mehta                                                 36      82000
Chandigarh


10 rows selected.

SQL> DECLARE
  2     total_rows number(2);
  3  BEGIN
  4     UPDATE customer
  5     SET salary = salary + 500;
  6     IF sql%notfound THEN
  7        dbms_output.put_line('no customers selected');
  8     ELSIF sql%found THEN
  9        total_rows := sql%rowcount;
 10        dbms_output.put_line( total_rows || ' customers selected ');
 11     END IF;
 12  END;
 13  /
10 customers selected

PL/SQL procedure successfully completed.

SQL> set serveroutput on
SQL> DECLARE
  2     total_rows number(2);
  3  BEGIN
  4     UPDATE customer
  5     SET salary = salary + 500;
  6     IF sql%notfound THEN
  7        dbms_output.put_line('no customers selected');
  8     ELSIF sql%found THEN
  9        total_rows := sql%rowcount;
 10        dbms_output.put_line( total_rows || ' customers selected ');
 11     END IF;
 12  END;
 13  /
10 customers selected

PL/SQL procedure successfully completed.

SQL> select * from customer;

        ID NAME                                                      AGE     SALARY
---------- -------------------------------------------------- ---------- ----------
ADDRESS
----------------------------------------------------------------------------------------------------
         1 Amit Kumar                                                 30      51000
Delhi

         2 Rohit Sharma                                               28      61000
Mumbai

         3 Priya Verma                                                35      76000
Bangalore

         4 Suresh Raina                                               40      81000
Chennai

         5 Meena Joshi                                                25      46000
Pune

         6 Rajesh Singh                                               32      71000
Hyderabad

         7 Neha Kapoor                                                27      56000
Kolkata

         8 Vikram Rao                                                 38      91000
Ahmedabad

         9 Pooja Das                                                  29      49000
Jaipur

        10 Anil Mehta                                                 36      83000
Chandigarh


10 rows selected.

SQL> DECLARE
  2     total_rows number(2);
  3  BEGIN
  4     UPDATE customer
  5     SET salary = salary + 500;
  6     IF sql%notfound THEN
  7        dbms_output.put_line('no customers selected');
  8     ELSIF sql%found THEN
  9        total_rows := sql%rowcount;
 10        dbms_output.put_line( total_rows || ' customers selected ');
 11     END IF;
 12  END;
 13  /
10 customers selected

PL/SQL procedure successfully completed.

SQL> select * from customer;

        ID NAME                                                      AGE     SALARY
---------- -------------------------------------------------- ---------- ----------
ADDRESS
----------------------------------------------------------------------------------------------------
         1 Amit Kumar                                                 30      51500
Delhi

         2 Rohit Sharma                                               28      61500
Mumbai

         3 Priya Verma                                                35      76500
Bangalore

         4 Suresh Raina                                               40      81500
Chennai

         5 Meena Joshi                                                25      46500
Pune

         6 Rajesh Singh                                               32      71500
Hyderabad

         7 Neha Kapoor                                                27      56500
Kolkata

         8 Vikram Rao                                                 38      91500
Ahmedabad

         9 Pooja Das                                                  29      49500
Jaipur

        10 Anil Mehta                                                 36      83500
Chandigarh


10 rows selected.

SQL> DECLARE
  2     c_id customers.id%type;
  3     c_name customers.name%type;
  4     c_addr customers.address%type;
  5     CURSOR c_customers is
  6        SELECT id, name, address FROM customers;
  7  BEGIN
  8     OPEN c_customers;
  9     LOOP
 10     FETCH c_customers into c_id, c_name, c_addr;
 11        EXIT WHEN c_customers%notfound;
 12        dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);
 13     END LOOP;
 14     CLOSE c_customers;
 15  END;
 16  /
   c_id customers.id%type;
        *
ERROR at line 2:
ORA-06550: line 2, column 9:
PLS-00201: identifier 'CUSTOMERS.ID' must be declared
ORA-06550: line 0, column 0:
PL/SQL: Compilation unit analysis terminated


SQL> DECLARE
  2     id customer.id%type;
  3     name customer.name%type;
  4     addr customer.address%type;
  5     CURSOR customer is
  6        SELECT id, name, address FROM customer;
  7  BEGIN
  8     OPEN customer;
  9     LOOP
 10     FETCH customers into id, name, addr;
 11        EXIT WHEN customers%notfound;
 12        dbms_output.put_line(id || ' ' || name || ' ' || addr);
 13     END LOOP;
 14     CLOSE customer;
 15  END;
 16  /
   id customer.id%type;
      *
ERROR at line 2:
ORA-06550: line 2, column 7:
PLS-00320: the declaration of the type of this expression is incomplete or malformed
ORA-06550: line 0, column 0:
PL/SQL: Compilation unit analysis terminated


SQL> DECLARE
  2     id customer.id%type;
  3     name customer.name%type;
  4     addr customer.address%type;
  5     CURSOR customer is
  6        SELECT id, name, address FROM customer;
  7  BEGIN
  8     OPEN customer;
  9     LOOP
 10     FETCH customer into id, name, addr;
 11        EXIT WHEN customer%notfound;
 12        dbms_output.put_line(id || ' ' || name || ' ' || addr);
 13     END LOOP;
 14     CLOSE customer;
 15  END;
 16  /
   id customer.id%type;
      *
ERROR at line 2:
ORA-06550: line 2, column 7:
PLS-00320: the declaration of the type of this expression is incomplete or malformed
ORA-06550: line 0, column 0:
PL/SQL: Compilation unit analysis terminated


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2     id customer.id%type;
  3     name customer.name%type;
  4     addr customer.address%type;
  5     CURSOR customer is
  6        SELECT id, name, address FROM customer;
  7  BEGIN
  8     OPEN customer;
  9     LOOP
 10     FETCH customer into id, name, addr;
 11        EXIT WHEN customer%notfound;
 12        dbms_output.put_line(id || ' ' || name || ' ' || addr);
 13     END LOOP;
 14     CLOSE customer;
 15* END;
SQL> /
   id customer.id%type;
      *
ERROR at line 2:
ORA-06550: line 2, column 7:
PLS-00320: the declaration of the type of this expression is incomplete or malformed
ORA-06550: line 0, column 0:
PL/SQL: Compilation unit analysis terminated


SQL>
SQL>
SQL>
SQL> DECLARE
  2     v_id customer.id%TYPE;
  3     v_name customer.name%TYPE;
  4     v_addr customer.address%TYPE;
  5
  6     CURSOR customer_cursor IS  -- Changed cursor name to avoid conflict
  7        SELECT id, name, address FROM customer;
  8  BEGIN
  9     OPEN customer_cursor;
 10     LOOP
 11        FETCH customer_cursor INTO v_id, v_name, v_addr;
 12        EXIT WHEN customer_cursor%NOTFOUND;
 13        DBMS_OUTPUT.PUT_LINE(v_id || ' ' || v_name || ' ' || v_addr);
 14     END LOOP;
 15     CLOSE customer_cursor;
 16  END;
 17  /
1 Amit Kumar Delhi
2 Rohit Sharma Mumbai
3 Priya Verma Bangalore
4 Suresh Raina Chennai
5 Meena Joshi Pune
6 Rajesh Singh Hyderabad
7 Neha Kapoor Kolkata
8 Vikram Rao Ahmedabad
9 Pooja Das Jaipur
