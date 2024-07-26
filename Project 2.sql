-- Project 02

-- Q No 01) Create new schema as alumni
CREATE DATABASE alumni;

-- Q No 02) Import all .csv files into MySQL
-- IMPORTED
Use alumni;
-- Q No 03) Run SQL command to see the structure of six tables
DESC college_a_hs;
DESC college_a_se;
DESC college_a_sj;
DESC college_b_hs;
DESC college_b_se;
DESC college_b_sj;

/* Q NO 04) Display first 1000 rows of tables (College_A_HS, College_A_SE,
 College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) with Python. */
 -- Attatched File Also
/* 

import mysql.connector
testdb = mysql.connector.connect(host="localhost", user="root", password="9999", database="alumni")
testcursor = testdb.cursor()
testcursor.execute("SELECT * FROM college_a_hs limit 1000")
a = testcursor.fetchall()
for b in a :
    print (b)
    
import mysql.connector
testdb = mysql.connector.connect(host="localhost", user="root", password="9999", database="alumni")
testcursor = testdb.cursor()
testcursor.execute("SELECT * FROM college_a_se limit 1000")
a = testcursor.fetchall()
for b in a :
    print (b)
    
import mysql.connector
testdb = mysql.connector.connect(host="localhost", user="root", password="9999", database="alumni")
testcursor = testdb.cursor()
testcursor.execute("SELECT * FROM college_a_sj limit 1000")
a = testcursor.fetchall()
for b in a :
    print (b)
    
import mysql.connector
testdb = mysql.connector.connect(host="localhost", user="root", password="9999", database="alumni")
testcursor = testdb.cursor()
testcursor.execute("SELECT * FROM college_b_hs limit 1000")
a = testcursor.fetchall()
for b in a :
    print (b)

import mysql.connector
testdb = mysql.connector.connect(host="localhost", user="root", password="9999", database="alumni")
testcursor = testdb.cursor()
testcursor.execute("SELECT * FROM college_b_se limit 1000")
a = testcursor.fetchall()
for b in a :
    print (b)
    
    
import mysql.connector
testdb = mysql.connector.connect(host="localhost", user="root", password="9999", database="alumni")
testcursor = testdb.cursor()
testcursor.execute("SELECT * FROM college_b_sj limit 1000")
a = testcursor.fetchall()
for b in a :
    print (b)
    */
 -- Note :  Wrote querries in jupyter book and copied the querries and pasted here.   


/* Q NO 05) Import first 1500 rows of tables (College_A_HS, College_A_SE, 
College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) into MS Excel. */

-- Imprted in EXCEL by bellow steps
-- A. open EXCEl go to Data open MYSQL
-- dubble clilk on host open with Password open alumni Schema 
-- Selecting the table college_a_hs like wise selecting all tables one by one  
-- import tables with limit of 1500 to each table one by one
-- Attatched Screenshot for referance while importing data

/* Q NO 06) Perform data cleaning on table College_A_HS and 
store cleaned data in view College_A_HS_V, Remove null values. */
CREATE VIEW college_A_HS_V AS (SELECT * FROM college_a_hs WHERE RollNo IS NOT NULL AND 
LastUpdate IS NOT NULL AND Name IS NOT NULL AND FatherName IS NOT NULL AND MotherName IS NOT NULL 
AND Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND HSDegree IS NOT NULL 
AND EntranceExam IS NOT NULL AND Institute IS NOT NULL AND Location IS NOT NULL);


/* Q NO 07) Perform data cleaning on table College_A_SE and 
store cleaned data in view College_A_SE_V, Remove null values.*/
CREATE VIEW College_A_SE_V AS (SELECT * FROM college_a_se WHERE RollNo IS NOT NULL AND 
LastUpdate IS NOT NULL AND Name IS NOT NULL AND FatherName IS NOT NULL AND MotherName IS NOT NULL 
AND Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND Organization IS NOT NULL AND Location IS NOT NULL);


/* Q NO 08) Perform data cleaning on table College_A_SJ and 
store cleaned data in view College_A_SJ_V, Remove null values.*/
CREATE VIEW College_A_SJ_V AS (SELECT * FROM college_a_sj WHERE RollNo IS NOT NULL AND 
LastUpdate IS NOT NULL AND Name IS NOT NULL AND FatherName IS NOT NULL AND MotherName IS NOT NULL 
AND Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND Organization IS NOT NULL AND 
Designation IS NOT NULL AND Location IS NOT NULL);


/* Q NO 09) Perform data cleaning on table College_B_HS and 
store cleaned data in view College_B_HS_V, Remove null values.*/
CREATE VIEW College_B_HS_V AS (SELECT * FROM college_b_hs WHERE RollNo IS NOT NULL AND 
LastUpdate IS NOT NULL AND Name IS NOT NULL AND FatherName IS NOT NULL AND MotherName IS NOT NULL
AND Branch IS NOT NULL AND Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND 
HSDegree IS NOT NULL AND EntranceExam IS NOT NULL AND Institute IS NOT NULL AND Location IS NOT NULL);


/* Q NO 10) Perform data cleaning on table College_B_SE and 
store cleaned data in view College_B_SE_V, Remove null values.*/
CREATE VIEW College_B_SE_V AS (SELECT * FROM college_b_se WHERE RollNo IS NOT NULL AND 
LastUpdate IS NOT NULL AND Name IS NOT NULL AND FatherName IS NOT NULL AND 
MotherName IS NOT NULL AND Branch IS NOT NULL AND Batch IS NOT NULL AND Degree IS NOT NULL AND 
PresentStatus IS NOT NULL AND Organization IS NOT NULL AND Location IS NOT NULL);


/* Q NO 11) Perform data cleaning on table College_B_SJ and 
store cleaned data in view College_B_SJ_V, Remove null values.*/
CREATE VIEW College_B_SJ_V AS (SELECT * FROM college_b_sj WHERE RollNo IS NOT NULL AND 
LastUpdate IS NOT NULL AND Name IS NOT NULL AND FatherName IS NOT NULL AND 
MotherName IS NOT NULL AND Branch IS NOT NULL AND Batch IS NOT NULL AND Degree IS NOT NULL AND 
PresentStatus IS NOT NULL AND Organization IS NOT NULL AND Designation IS NOT NULL AND Location IS NOT NULL);


/* Q NO 12) Make procedure to use string function/s for converting record of Name, 
FatherName, MotherName into lower case for views 
(College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) */

DELIMITER //
CREATE PROCEDURE college_a_hs()
BEGIN
SELECT  LOWER(Name), LOWER(FatherName), LOWER(MotherName) FROM college_a_hs_v; 
END //
DELIMITER ;

CALL college_a_hs();


DELIMITER //
CREATE PROCEDURE college_a_se()
BEGIN
SELECT  LOWER(Name), LOWER(FatherName), LOWER(MotherName) FROM college_a_se_v; 
END //
DELIMITER ;
CALL college_a_se();


DELIMITER //
CREATE PROCEDURE college_a_sj()
BEGIN
SELECT  LOWER(Name), LOWER(FatherName), LOWER(MotherName) FROM college_a_sj_v; 
END //
DELIMITER ;
CALL college_a_sj();


DELIMITER //
CREATE PROCEDURE college_b_hs()
BEGIN
SELECT  LOWER(Name), LOWER(FatherName), LOWER(MotherName) FROM college_b_hs_v; 
END //
DELIMITER ;
CALL college_b_hs();


DELIMITER //
CREATE PROCEDURE college_b_se()
BEGIN
SELECT  LOWER(Name), LOWER(FatherName), LOWER(MotherName) FROM college_b_se_v; 
END //
DELIMITER ;
CALL college_b_se();


DELIMITER //
CREATE PROCEDURE college_b_sj()
BEGIN
SELECT  LOWER(Name), LOWER(FatherName), LOWER(MotherName) FROM college_b_sj_v; 
END //
DELIMITER ;
CALL college_b_sj();



/* Q No 13) Import the created views (College_A_HS_V, College_A_SE_V, 
College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) 
into MS Excel and make pivot chart for location of Alumni. */
-- Attatched the File in excel format


/* Q NO 14) Write a query to create procedure get_name_collegeA 
using the cursor to fetch names of all students from college A.*/
DROP PROCEDURE get_name_collegeA
DELIMITER $$
CREATE PROCEDURE get_name_collegeA 
(
         INOUT name1 TEXT(40000)
)
BEGIN 
    DECLARE na INT DEFAULT 0;
    DECLARE namelist VARCHAR(16000) DEFAULT "";
    
    DECLARE namedetail 
           CURSOR FOR
				SELECT Name FROM college_a_hs UNION SELECT Name FROM college_a_se UNION SELECT Name FROM college_a_sj;
                
	DECLARE CONTINUE HANDLER 
            FOR NOT FOUND SET na =1;
            
	OPEN namedetail;
    
    getame :
         LOOP
         FETCH FROM namedetail INTO namelist;
         IF na = 1 THEN
              LEAVE getame;
		END IF;
        SET name1 = CONCAT(namelist,";",name1);
        
        END LOOP getame;
        CLOSE namedetail;
END $$
DELIMITER ;

SET @Name = "";
CALL get_name_collegeA(@Name);
SELECT @Name Name;



/* Q No 15) Write a query to create procedure get_name_collegeB 
using the cursor to fetch names of all students from college B.*/
DROP PROCEDURE get_name_collegeB
DELIMITER $$
CREATE PROCEDURE get_name_collegeB 
(
         INOUT name1 TEXT(40000)
)
BEGIN 
    DECLARE na INT DEFAULT 0;
    DECLARE namelist VARCHAR(16000) DEFAULT "";
    
    DECLARE namedetail 
           CURSOR FOR
				SELECT Name FROM college_b_hs UNION SELECT Name FROM college_b_se UNION SELECT Name FROM college_b_sj;
                
	DECLARE CONTINUE HANDLER 
            FOR NOT FOUND SET na =1;
            
	OPEN namedetail;
    
    getame :
         LOOP
         FETCH FROM namedetail INTO namelist;
         IF na = 1 THEN
              LEAVE getame;
		END IF;
        SET name1 = CONCAT(namelist,";",name1);
        
        END LOOP getame;
        CLOSE namedetail;
END $$
DELIMITER ;

SET @Name = "";
CALL get_name_collegeB(@Name);
SELECT @Name Name;

/* Q NO 16) Calculate the percentage of career choice of College A and College B Alumni
-- (w.r.t Higher Studies, Self Employed and Service/Job)
Note: Approximate percentages are considered for career choices.*/
SELECT "Higher Studies" Present_status,(COUNT(college_a_hs.RollNo) /(college_a_hs.RollNo))*100 College_A_Persentage,(COUNT(college_b_hs.RollNo)/(college_b_hs.RollNo))*100 College_B_Persentage   FROM college_a_hs CROSS JOIN college_b_hs UNION 
SELECT "Self Empolyment" Present_status,(COUNT(college_a_se.RollNo) /(college_a_se.RollNo))*100 College_A_Persentage,(COUNT(college_b_se.RollNo)/(college_b_se.RollNo))*100 College_B_Persentage   FROM college_a_se CROSS JOIN college_b_se UNION
SELECT "Service Job" Present_status,(COUNT(college_a_sj.RollNo) /(college_a_sj.RollNo))*100 College_A_Persentage,(COUNT(college_b_sj.RollNo)/(college_b_sj.RollNo))*100 College_B_Persentage    FROM college_a_sj CROSS JOIN college_b_sj;

