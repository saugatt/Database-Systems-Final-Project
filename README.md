# Database-Systems-Final-Project
Author: Devendra Shah
Final Project Database Systems

1. Open Jupyter notebook;
2. Start a notebbok;
3. Run the comand 
%load_ext sql

4. Create a new file called dataset_1.db to store the tables. This file is the database file. 

5. Run the command
%sql sqlite:///database_1.db

6. Run the commands from the source code for the task you would like to complete.
a) For single line commands use %sql as a prefix followed by SQL command. 
b) a) For multiple line commands use %%sql as a prefix followed by SQL commands.

For example after the database is loaded and values are inserted. To run the command for task 4 highet score Use the notebook like this. 

%%sql
/*4. Calculating highest score for assignment 1. */
SELECT MAX(Points) FROM SCORE WHERE AssignmentID = 1;
