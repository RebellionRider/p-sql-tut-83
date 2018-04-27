/*
    PL/SQL Tutorial 83: CREATE TABLE DDL with EXECUTE IMMEDIATE Part 2
    YouTube tutorial link https://youtu.be/dl39itjrWYw
    by Manish Sharma
	www.RebellionRider.com
	www.YouTube.com/c/RebellionRider
    www.Twitter.com/RebellionRider
    www.Facebook.com/TheRebellionRider
*/

SET SERVEROUTPUT ON;
DROP TABLE tut_83 PURGE;
DECLARE
    ddl_qry     VARCHAR2(150);
BEGIN
    ddl_qry := 'CREATE TABLE tut_83('||
                'tut_num     NUMBER(3),'||
                'tut_name    VARCHAR2(50)'||
                ')';
    EXECUTE IMMEDIATE ddl_qry;
END;
/
--check if the table is created or not

--Using Describe Command
DESCRIBE tut_83;

--Using All_Objects Data Dictionary
SELECT 'We created a table with name '||object_name||' in '
        ||owner||' schema on '||created
FROM all_objects WHERE object_name ='TUT_83';



