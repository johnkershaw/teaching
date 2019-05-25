-- Q1. CREATE a new table called 'staff'.

CREATE TABLE staff2 (id INTEGER PRIMARY KEY, name TEXT, age INTEGER, gender TEXT, dept TEXT, wage INTEGER);


-- Q2. INSERT the 5 staff members INTO the table.

INSERT INTO staff2 VALUES (1, "Gustav Nezval", 43, "M", "Sales", 150);
INSERT INTO staff2 VALUES (2, "Angela Jones", 22, "F", "Admin", 140);
INSERT INTO staff2 VALUES (3, "Robert Prior", 31, "M", "Admin", 180);
INSERT INTO staff2 VALUES (4, "Kwak Mi-ran", 21, "F", "Sales", 120);
INSERT INTO staff2 VALUES (5, "Lian Wu", 25, "F", "Tech Support", 200);


-- Q3. Display everything in the staff table.

SELECT * FROM staff2;


-- Q4. Display ONLY the name, age, and wage of all staff in the 'Sales' department.

SELECT name, age, wage FROM staff2 WHERE dept = "Sales"; 


-- Q5. Calculate the total staff wage bill each week.

SELECT SUM(wage) FROM staff2;


-- Q6. Calculate the average staff wage.

SELECT AVG(wage) FROM staff2;


-- Q7. List all female staff in the 'Sales' dept.

SELECT name FROM staff2 WHERE gender = "F" AND dept = "Sales";


-- Q8. Find the member of staff with the highest wage. Results should include name, dept & earns

SELECT name, dept, MAX(wage) AS earns FROM staff2;


-- Q9. Who earns more, women or men? Display average wages grouped by gender.

SELECT gender, AVG(wage) FROM staff2 GROUP BY gender;


-- Q10. Display the average wage for every department with an average weekly wage under $150.

SELECT dept, AVG(wage) FROM staff2 GROUP BY dept HAVING AVG(wage) < 150;


-- Q11. Display the name and wage of all staff who earn more than the average salary.

SELECT name, wage FROM staff2 WHERE wage > (SELECT AVG(wage) FROM staff2);


-- Q12. Do older employees earn more? For each staff member display their name & wage, then either 'young' or 'old' (if over 30) as 'age' and either 'low' or 'high' (earns over $180) as 'earns'.

SELECT name, wage,
    CASE WHEN age > 30 THEN "old"
    ElSE "young"
    END "age",
    CASE WHEN wage > 180 THEN "high"
    ELSE "low"
    END "earns"
FROM staff2;
