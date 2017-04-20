%load_ext sql
%%sql sqlite:///database_1.db

drop table if exists STUDENT;

CREATE TABLE STUDENT (
    FirstName VARCHAR(50) NOT NULL, 
    LastName VARCHAR(50) NOT NULL,
    Major VARCHAR(30),
    StudentID INT NOT NULL UNIQUE, 
    PRIMARY KEY (StudentID)
);

drop table if exists COURSE;

CREATE TABLE COURSE (
    Department VARCHAR(30) NOT NULL, 
    CourseNumber INT NOT NULL, 
    CourseName VARCHAR(50) NOT NULL, 
    Term VARCHAR(15) NOT NULL,
    Year INT NOT NULL,
    CourseID INT NOT NULL UNIQUE,
    PRIMARY KEY (CourseID)
);

drop table if exists ENROLLMENT;

CREATE TABLE ENROLLMENT (
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    PRIMARY KEY(StudentID, CourseID)
);

drop table if exists DISTRIBUTION;

CREATE TABLE DISTRIBUTION (
    DistributionID INT NOT NULL UNIQUE,
    CourseID INT NOT NULL,
    CategoryName VARCHAR(30) NOT NULL,
    PERCENTAGE INT NOT NULL,
    PRIMARY KEY(DistributionID)
);

drop table if exists ASSIGNMENT;

CREATE TABLE ASSIGNMENT (
    AssignmentID INT NOT NULL UNIQUE,
    DistributionID INT NOT NULL,
    Instance INT NOT NULL, 
    PointsPossible INT DEFAULT 0 NOT NULL,
    PRIMARY KEY(AssignmentID)
);

drop table if exists SCORE;

CREATE TABLE SCORE (
    StudentID INT NOT NULL,
    AssignmentID INT NOT NULL,
    Points INT DEFAULT 0 NOT NULL,
    PRIMARY KEY(StudentID, AssignmentID)
);

/* Inserting values in STUDENT table */

INSERT INTO STUDENT VALUES('Richard', 'Hendricks', 'Computer Science', 1234);
INSERT INTO STUDENT VALUES('Jared', 'Dunn', 'Management Science', 5678);
INSERT INTO STUDENT VALUES('Erlich', 'Bachman', 'Aviato', 3456);
INSERT INTO STUDENT VALUES('Jimmy', 'Quoyang', 'Marine Biology', 4590);
INSERT INTO STUDENT VALUES('Dinesh', 'Gilfoyle', 'Computer Engineering', 5337);
INSERT INTO STUDENT VALUES('John', 'Doe', 'English', 5555);

SELECT * FROM STUDENT;

/* Inserting values in COURSE table */

INSERT INTO COURSE VALUES('Math', 157, 'Calculus-2', 'Fall', 2017, 85675);
INSERT INTO COURSE VALUES('Computer Science', 350, 'Programming Languages', 'Spring', 2017, 89994);
INSERT INTO COURSE VALUES('English', 109, 'Technical Writing', 'Fall', 2016, 56738);
INSERT INTO COURSE VALUES('Computer Science', 533, 'Senior Project', 'Spring', 2017, 90573);
INSERT INTO COURSE VALUES('Physics', 100, 'Mechanics', 'Fall', 2016, 48387);

SELECT * FROM COURSE;

/* Inserting values in ENROLLMENT table */

INSERT INTO ENROLLMENT VALUES(1234, 85675);
INSERT INTO ENROLLMENT VALUES(5678, 85675);
INSERT INTO ENROLLMENT VALUES(3456, 85675);
INSERT INTO ENROLLMENT VALUES(4590, 85675);
INSERT INTO ENROLLMENT VALUES(5337, 85675);
INSERT INTO ENROLLMENT VALUES(5555, 85675);

INSERT INTO ENROLLMENT VALUES(1234, 56738);
INSERT INTO ENROLLMENT VALUES(5678, 56738);
INSERT INTO ENROLLMENT VALUES(3456, 56738);
INSERT INTO ENROLLMENT VALUES(4590, 56738);
INSERT INTO ENROLLMENT VALUES(5337, 56738);
INSERT INTO ENROLLMENT VALUES(5555, 56738);

INSERT INTO ENROLLMENT VALUES(1234, 89994);
INSERT INTO ENROLLMENT VALUES(1234, 90573);
INSERT INTO ENROLLMENT VALUES(1234, 48387);
INSERT INTO ENROLLMENT VALUES(5337, 90573);

SELECT * FROM ENROLLMENT;

/* Inserting values in DISTRIBUTION table */

INSERT INTO DISTRIBUTION VALUES(1, 85675, 'Quiz', 50);
INSERT INTO DISTRIBUTION VALUES(2, 85675, 'HW', 10);
INSERT INTO DISTRIBUTION VALUES(3, 85675, 'MidTerm', 20);
INSERT INTO DISTRIBUTION VALUES(4, 85675, 'Final', 20);

INSERT INTO DISTRIBUTION VALUES(5, 89994, 'Participation', 40);
INSERT INTO DISTRIBUTION VALUES(6, 89994, 'HW', 10);
INSERT INTO DISTRIBUTION VALUES(7, 89994, 'MidTerm', 25);
INSERT INTO DISTRIBUTION VALUES(8, 89994, 'Final', 25);

INSERT INTO DISTRIBUTION VALUES(9, 56738, 'Quiz', 40);
INSERT INTO DISTRIBUTION VALUES(10, 56738, 'HW', 15);
INSERT INTO DISTRIBUTION VALUES(11, 56738, 'MidTerm', 20);
INSERT INTO DISTRIBUTION VALUES(12, 56738, 'Final', 25);

INSERT INTO DISTRIBUTION VALUES(13, 90573, 'Quiz', 20);
INSERT INTO DISTRIBUTION VALUES(14, 90573, 'HW', 25);
INSERT INTO DISTRIBUTION VALUES(15, 90573, 'Project', 30);
INSERT INTO DISTRIBUTION VALUES(16, 90573, 'Final', 25);

INSERT INTO DISTRIBUTION VALUES(17, 48387, 'Quiz', 30);
INSERT INTO DISTRIBUTION VALUES(18, 48387, 'HW', 25);
INSERT INTO DISTRIBUTION VALUES(19, 48387, 'Project', 20);
INSERT INTO DISTRIBUTION VALUES(20, 48387, 'Final', 25);

SELECT * FROM DISTRIBUTION;

/* Inserting values in ASSIGNMENT table */

INSERT INTO ASSIGNMENT VALUES(1, 1, 1, 100);
INSERT INTO ASSIGNMENT VALUES(2, 1, 2, 100);

INSERT INTO ASSIGNMENT VALUES(3, 2, 1, 100);
INSERT INTO ASSIGNMENT VALUES(4, 2, 2, 100);

INSERT INTO ASSIGNMENT VALUES(5, 3, 1, 100);
INSERT INTO ASSIGNMENT VALUES(6, 3, 2, 100);

INSERT INTO ASSIGNMENT VALUES(7, 4, 1, 100);
INSERT INTO ASSIGNMENT VALUES(8, 4, 2, 100);

INSERT INTO ASSIGNMENT VALUES(9, 5, 1, 100);
INSERT INTO ASSIGNMENT VALUES(10, 5, 2, 100);

INSERT INTO ASSIGNMENT VALUES(11, 6, 1, 100);
INSERT INTO ASSIGNMENT VALUES(12, 6, 2, 100);

INSERT INTO ASSIGNMENT VALUES(13, 7, 1, 100);
INSERT INTO ASSIGNMENT VALUES(14, 7, 2, 100);

INSERT INTO ASSIGNMENT VALUES(15, 8, 1, 100);
INSERT INTO ASSIGNMENT VALUES(16, 8, 2, 100);

INSERT INTO ASSIGNMENT VALUES(17, 9, 1, 100);
INSERT INTO ASSIGNMENT VALUES(18, 9, 2, 100);

INSERT INTO ASSIGNMENT VALUES(19, 10, 1, 100);
INSERT INTO ASSIGNMENT VALUES(20, 10, 2, 100);

INSERT INTO ASSIGNMENT VALUES(21, 11, 1, 100);
INSERT INTO ASSIGNMENT VALUES(22, 11, 2, 100);

INSERT INTO ASSIGNMENT VALUES(23, 12, 1, 100);
INSERT INTO ASSIGNMENT VALUES(24, 12, 2, 100);

INSERT INTO ASSIGNMENT VALUES(25, 13, 1, 100);
INSERT INTO ASSIGNMENT VALUES(26, 13, 2, 100);

INSERT INTO ASSIGNMENT VALUES(27, 14, 1, 100);
INSERT INTO ASSIGNMENT VALUES(28, 14, 2, 100);

INSERT INTO ASSIGNMENT VALUES(29, 15, 1, 100);
INSERT INTO ASSIGNMENT VALUES(30, 15, 2, 100);

INSERT INTO ASSIGNMENT VALUES(31, 16, 1, 100);
INSERT INTO ASSIGNMENT VALUES(32, 16, 2, 100);

INSERT INTO ASSIGNMENT VALUES(33, 17, 1, 100);
INSERT INTO ASSIGNMENT VALUES(34, 17, 2, 100);

INSERT INTO ASSIGNMENT VALUES(35, 18, 1, 100);
INSERT INTO ASSIGNMENT VALUES(36, 18, 2, 100);

INSERT INTO ASSIGNMENT VALUES(37, 19, 1, 100);
INSERT INTO ASSIGNMENT VALUES(38, 19, 2, 100);

INSERT INTO ASSIGNMENT VALUES(39, 20, 1, 100);
INSERT INTO ASSIGNMENT VALUES(40, 20, 2, 100);

INSERT INTO ASSIGNMENT VALUES(42, 1, 3, 100);

SELECT * FROM ASSIGNMENT;

/* Inserting values in SCORE table */

INSERT INTO SCORE VALUES(1234, 1, 85);
INSERT INTO SCORE VALUES(5678, 1, 80);
INSERT INTO SCORE VALUES(3456, 1, 95);
INSERT INTO SCORE VALUES(4590, 1, 65);
INSERT INTO SCORE VALUES(5337, 1, 100);
INSERT INTO SCORE VALUES(5555, 1, 93);

INSERT INTO SCORE VALUES(1234, 2, 81);
INSERT INTO SCORE VALUES(5678, 2, 84);
INSERT INTO SCORE VALUES(3456, 2, 95);
INSERT INTO SCORE VALUES(4590, 2, 62);
INSERT INTO SCORE VALUES(5337, 2, 90);
INSERT INTO SCORE VALUES(5555, 2, 93);


INSERT INTO SCORE VALUES(1234, 18, 87);
INSERT INTO SCORE VALUES(5678, 18, 94);
INSERT INTO SCORE VALUES(3456, 18, 55);
INSERT INTO SCORE VALUES(4590, 18, 72);
INSERT INTO SCORE VALUES(5337, 18, 0);
INSERT INTO SCORE VALUES(5555, 18, 99);

INSERT INTO SCORE VALUES(1234, 16, 80);
INSERT INTO SCORE VALUES(1234, 30, 85);
INSERT INTO SCORE VALUES(1234, 40, 95);

INSERT INTO SCORE VALUES(5337, 26, 78);

INSERT INTO SCORE VALUES(1234, 8, 84);

INSERT INTO SCORE VALUES(1234, 42, 80);
INSERT INTO SCORE VALUES(5678, 42, 81);
INSERT INTO SCORE VALUES(3456, 42, 94);
INSERT INTO SCORE VALUES(4590, 42, 46);
INSERT INTO SCORE VALUES(5337, 42, 91);
INSERT INTO SCORE VALUES(5555, 42, 97);

SELECT * FROM SCORE;

/*4. Calculating average score for assignment 1.*/
SELECT AVG(Points) FROM SCORE WHERE AssignmentID = 1;

/*4. Calculating highest score for assignment 1. */
SELECT MAX(Points) FROM SCORE WHERE AssignmentID = 1;

/*4. Calculating lowest score for assignment 1. */
SELECT MIN(Points) FROM SCORE WHERE AssignmentID = 1;

/* 5. List all of the students in a given course; 
Listing all students in Calculus 2 class */

SELECT STUDENT.StudentID, FirstName, LastName, Major, CourseID
FROM STUDENT JOIN ENROLLMENT
WHERE CourseID = 85675
AND STUDENT.StudentID = ENROLLMENT.StudentID;


/*6. List all of the students in a course and
all of their scores on every assignment;

Doing this for Calculus 2 class
*/

SELECT pt.StudentID as StudentID, st.FirstName as FirstName, 
st.LastName as LastName, pt.CourseID as CourseID,
pt.AssignmentID as AssignmentID, pt.CategoryName as CategoryName,
pt.Points as Points 
FROM (SELECT STUDENT.StudentID, AssignmentID, FirstName, LastName,
      CourseID, Points
    FROM STUDENT JOIN ENROLLMENT JOIN SCORE
    WHERE CourseID = 85675
    AND STUDENT.StudentID = ENROLLMENT.StudentID
    AND STUDENT.StudentID = SCORE.StudentID) st 
JOIN 
    (SELECT StudentID, CourseID, CategoryName, ASSIGNMENT.AssignmentID,Points
    FROM DISTRIBUTION JOIN ASSIGNMENT JOIN SCORE
    WHERE DISTRIBUTION.CourseID = 85675 
    AND DISTRIBUTION.DistributionID = ASSIGNMENT.DistributionID
    AND ASSIGNMENT.AssignmentID = SCORE.AssignmentID) pt
WHERE st.AssignmentID = pt.AssignmentID
AND st.Points = pt.Points;

/*7. Add an assignment to a course

Adding a Homework Assignment for Calculus-2 class
HW ID for Calculs-2 class is 2, and 
there are already 2 HWs for this class in the database;*/

INSERT INTO ASSIGNMENT VALUES (41, 2, 3, 100);

SELECT * FROM ASSIGNMENT ORDER BY DistributionID;

/*8. Change the percentages of the categories for a course;

Changing the percentages for all the categories of Calculus-2 class*/

UPDATE DISTRIBUTION
SET PERCENTAGE = 80
WHERE CourseID = 85675
AND CategoryName = 'Quiz'
AND DistributionID = 1; 

UPDATE DISTRIBUTION
SET PERCENTAGE = 5
WHERE CourseID = 85675
AND CategoryName = 'HW'
AND DistributionID = 2;

UPDATE DISTRIBUTION
SET PERCENTAGE = 5
WHERE CourseID = 85675
AND CategoryName = 'MidTerm'
AND DistributionID = 3;

UPDATE DISTRIBUTION
SET PERCENTAGE = 10
WHERE CourseID = 85675
AND CategoryName = 'Final'
AND DistributionID = 4;

/*9. Add 2 points to the score of each student on an assignment;

Adding 2 points to the score of all the students on Quiz-2 
in Calculus 2 class*/

UPDATE SCORE
SET Points = Points + 2
WHERE AssignmentID = 2;

/* Checking to see the updates from task 9*/

SELECT * 
FROM SCORE 
WHERE AssignmentID = 2;

/* Checking to see the updates from task 9 
and make sure updates happened only on Quiz-2 or AssignmentID 2*/

SELECT * 
FROM SCORE;

/*10. Add 2 points just to those students whose 
last name contains a ‘Q’.

Adding 2 points to the score of the students whose 
last name contains a 'Q' on Quiz-2 in Calculus 2 class*/

UPDATE SCORE
SET Points = Points + 2
WHERE StudentID IN (SELECT StudentID 
                    FROM STUDENT 
                    WHERE LastName LIKE '%Q%')
AND AssignmentID = 2;


/* Checking to see the updates from task 10*/

SELECT * 
FROM SCORE 
WHERE AssignmentID = 2;


/* Checking to see the updates from task 10 
and make sure updates happened only on Quiz-2 or AssignmentID 2
ans students whose last name contains 'Q'*/

SELECT * 
FROM SCORE;

/*11. Compute the grade for a student;

Computing the grade for Richard Hendricks
StudentID 1234 in Calculus 2 class 
CourseID 85765*/

drop table if exists currgrades;

CREATE TABLE currgrades AS
SELECT pt.StudentID as StudentID, st.FirstName as FName, 
st.LastName as LName, pt.CourseID as CourseID,
pt.AssignmentID as asn_id, pt.DistributionID as distrID,
CategoryName as category, PERCENTAGE as Weight,
PointsPossible as maxP,
pt.Points as points , 
(1.0*pt.Points)/ PointsPossible * PERCENTAGE AS grade
FROM (SELECT STUDENT.StudentID, AssignmentID, FirstName, LastName, 
    CourseID, Points
    FROM STUDENT JOIN ENROLLMENT JOIN SCORE
    WHERE CourseID = 85675
    AND STUDENT.StudentID = ENROLLMENT.StudentID
    AND STUDENT.StudentID = SCORE.StudentID) st 
JOIN 
    (SELECT StudentID, CourseID, CategoryName, DISTRIBUTION.DistributionID, 
    PERCENTAGE, ASSIGNMENT.AssignmentID, ASSIGNMENT.PointsPossible, Points
    FROM DISTRIBUTION JOIN ASSIGNMENT JOIN SCORE
    WHERE DISTRIBUTION.CourseID = 85675 
    AND DISTRIBUTION.DistributionID = ASSIGNMENT.DistributionID
    AND ASSIGNMENT.AssignmentID = SCORE.AssignmentID) pt
WHERE st.AssignmentID = pt.AssignmentID
AND st.Points = pt.Points
AND pt.StudentID = 1234
ORDER BY DistributionID;

/*Calclating weighted grades*/
UPDATE currgrades
SET grade = (1.0 * points * Weight) / maxP;

select * from currgrades;

/*Calculating grade on a 100*/
drop table if exists finalgrades;

CREATE table finalgrades AS
SELECT *, sg.instancecount as instances, 
grade/instancecount as finalgrade
FROM currgrades cg
INNER JOIN (SELECT distrID, count(distrID) as instancecount
           FROM currgrades
           GROUP BY distrID) sg ON cg.distrID = sg.distrID;
           
 select * from finalgrades;

/*Final Answer for task 11 */
SELECT SUM(finalgrade) as FINALGRADE from finalgrades;

/*12. Compute the grade for a student, where the 
lowest score for a given category is dropped.

Computing the grade for Richard Hendricks
StudentID 1234 in Calculus 2 class 
CourseID 85765
Dropping the lowest Quiz is dropped*/

drop table if exists currgrades;

 
CREATE TABLE currgrades AS
SELECT pt.StudentID as StudentID, st.FirstName as FName, 
st.LastName as LName, pt.CourseID as CourseID,
pt.AssignmentID as asn_id, pt.DistributionID as distrID,
CategoryName as category, PERCENTAGE as Weight,
PointsPossible as maxP,
pt.Points as points , 
(1.0 * pt.Points) / PointsPossible * PERCENTAGE AS grade
FROM (SELECT STUDENT.StudentID, AssignmentID, FirstName, LastName, 
    CourseID, Points
    FROM STUDENT JOIN ENROLLMENT JOIN SCORE
    WHERE CourseID = 85675
    AND STUDENT.StudentID = ENROLLMENT.StudentID
    AND STUDENT.StudentID = SCORE.StudentID) st 
JOIN 
    (SELECT StudentID, CourseID, CategoryName, DISTRIBUTION.DistributionID, 
    PERCENTAGE, ASSIGNMENT.AssignmentID, ASSIGNMENT.PointsPossible, Points
    FROM DISTRIBUTION JOIN ASSIGNMENT JOIN SCORE
    WHERE DISTRIBUTION.CourseID = 85675 
    AND DISTRIBUTION.DistributionID = ASSIGNMENT.DistributionID
    AND ASSIGNMENT.AssignmentID = SCORE.AssignmentID) pt
WHERE st.AssignmentID = pt.AssignmentID
AND st.Points = pt.Points
AND pt.StudentID = 1234
ORDER BY DistributionID;

/*Calculating weighted grade */
UPDATE currgrades
SET grade = points * 100.0 / maxP;

/*Dropping lowest score */
DELETE from currgrades
WHERE category = 'Quiz'
and grade IN (SELECT MIN(grade) as grade from currgrades);

/*Calculating weighted grade */
UPDATE currgrades
SET grade = 1.0 * points * Weight / maxP;

select * from currgrades;

/*Calculating grade on a 100 */
drop table if exists finalgrades;

CREATE table finalgrades AS
SELECT *, sg.instancecount as instances, 
1.0 * grade/instancecount as finalgrade
FROM currgrades cg
INNER JOIN (SELECT distrID, count(distrID) as instancecount
           FROM currgrades
           GROUP BY distrID) sg ON cg.distrID = sg.distrID;
 
 select * from finalgrades;
 
 /*Final refined code for task 12 */
 
/*12. Compute the grade for a student, where the 
lowest score for a given category is dropped.

Computing the grade for Richard Hendricks
StudentID 1234 in Calculus 2 class 
CourseID 85765
Dropping the lowest Quiz is dropped*/

drop table if exists currgrades;

 
CREATE TABLE currgrades AS
SELECT pt.StudentID as StudentID, st.FirstName as FName, 
st.LastName as LName, pt.CourseID as CourseID,
pt.AssignmentID as asn_id, pt.DistributionID as distrID,
CategoryName as category, PERCENTAGE as Weight,
PointsPossible as maxP,
pt.Points as points , 
(1.0 * pt.Points) / PointsPossible * PERCENTAGE AS grade
FROM (SELECT STUDENT.StudentID, AssignmentID, FirstName, LastName, 
    CourseID, Points
    FROM STUDENT JOIN ENROLLMENT JOIN SCORE
    WHERE CourseID = 85675
    AND STUDENT.StudentID = ENROLLMENT.StudentID
    AND STUDENT.StudentID = SCORE.StudentID) st 
JOIN 
    (SELECT StudentID, CourseID, CategoryName, DISTRIBUTION.DistributionID, 
    PERCENTAGE, ASSIGNMENT.AssignmentID, ASSIGNMENT.PointsPossible, Points
    FROM DISTRIBUTION JOIN ASSIGNMENT JOIN SCORE
    WHERE DISTRIBUTION.CourseID = 85675 
    AND DISTRIBUTION.DistributionID = ASSIGNMENT.DistributionID
    AND ASSIGNMENT.AssignmentID = SCORE.AssignmentID) pt
WHERE st.AssignmentID = pt.AssignmentID
AND st.Points = pt.Points
AND pt.StudentID = 1234
ORDER BY DistributionID;

/*Calculating weighted grade */
UPDATE currgrades
SET grade = points * 100.0 / maxP;

/*Dropping lowest score */
DELETE from currgrades
WHERE category = 'Quiz'
and grade IN (SELECT MIN(grade) as grade from currgrades);

/*Calculating weighted grade */
UPDATE currgrades
SET grade = 1.0 * points * Weight / maxP;

/*Calculating grade on a 100 */
drop table if exists finalgrades;

CREATE table finalgrades AS
SELECT *, sg.instancecount as instances, 
1.0 * grade/instancecount as finalgrade
FROM currgrades cg
INNER JOIN (SELECT distrID, count(distrID) as instancecount
           FROM currgrades
           GROUP BY distrID) sg ON cg.distrID = sg.distrID;

/*Final Answer for task 12 */

SELECT SUM(finalgrade) as FINALGRADE from finalgrades;


