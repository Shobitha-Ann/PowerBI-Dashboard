## Essential Excel Functions & Formulas - Learning Summary
**Introduction**

Microsoft Excel is one of the most powerful tools for data analysis, reporting, and business intelligence. Mastering its essential functions allows for efficient data manipulation, organization, and decision-making.

This document serves as a structured summary of key Excel functions and formulas, explaining their usage, applications, and real-world examples.

## Key Excel Functions and Their Applications

1. Total Salary and Headcount by Department

Functions Used: SUMIFS, COUNTIFS

Purpose: To calculate the total salary and the number of employees for each department.

Application:
SUMIFS helps sum salary values based on department criteria.

COUNTIFS counts the number of employees belonging to each department.

Example:
Headcount - =COUNTIFS(staff[Department],B3)

Total Salary - =SUMIFS(staff[Salary],staff[Department],B3:B14)

Avg Salary - =AVERAGEIFS(staff[Salary],staff[Department],B3;B14)

![Image](https://github.com/user-attachments/assets/7af2b311-dd14-4eb8-abe2-6165dfe86931)


This will provide the total salary and employee count in the Sales department.

2. All Employees with More Than $100k Salary

Function Used: FILTER

Purpose: To extract only those employees who earn more than $100k.

Application:
The FILTER function dynamically extracts rows matching a condition.

Example:

=FILTER(staff, staff[salary]>100000) //This will give filtered list

=staff[#Header] // To get same header as original table

Nesting :

=CHOOSECOLS(FILTER(staff, staff[salary]>100000),1,2,3,5,6)

=CHOOSECOLS(staff[#Header],1,2,3,5,6) //Header


3. All Female Employees with More Than $100k Salary

Functions Used: FILTER, * (Multiplication Operator for AND condition)

Purpose: To filter employees based on multiple conditions.

Application:
The FILTER function supports multiple conditions using the * operator (logical AND).

Example:

=FILTER(staff[EmpID]:[Salary]],(staff[salary]>F67)*(staff[Gender]="Female"))

This formula extracts female employees who earn more than $100k.

![Image](https://github.com/user-attachments/assets/0750cf37-7b99-4f22-bc49-f5edd0218bd0)


4. Lowest, Highest, and Top 5 Salary Values

Functions Used: MIN, MAX, LARGE, SORT, TAKE

Purpose: To find salary extremes and list the top earners.

Application:
MIN & MAX return the lowest and highest salaries.

LARGE helps retrieve the nth highest salary.

SORT & TAKE extract and display the top 5 salaries.

Example:

=MIN(staff[salary])  // Lowest salary

=MAX(staff[salary])  // Highest salary

=LARGE(staff[salary],k)  // Top 5 highest salaries, stored 1,2,3,4,5 in another column and referred to that

=TAKE(SORT(staff[salary],-1),5)  // Top 5 salaries in descending order

5. List of All Departments

Functions Used: UNIQUE, COUNTA, #

Purpose: To extract distinct department names from the dataset.

Application:
UNIQUE retrieves distinct values from a column.
COUNTA counts the number of unique departments.

Example:

=SORT(UNIQUE(Staff[Department]))

=COUNTA(B4#) //# is used to reference the entire array dynamically.


6. Employee Details Lookup (Basic Lookup)
Functions Used: VLOOKUP, INDEX + MATCH

Purpose: To search for employee records based on an ID.

Application:
VLOOKUP fetches data from a table vertically.

INDEX + MATCH offers a more flexible lookup method.

Example:

=VLOOKUP(C4,Staff,2,FALSE)

=IFERROR(VLOOKUP(C4,Staff,2,FALSE),"Not Found")

=INDEX(Staff[EmpID],MATCH(C17),Staff[LastName],0)

=XLOOKUP(C4,Staff[EmpID],Staff[FirstName],"Not Found") //Entire data

=TRAPOSE(XLOOKUP(C17,Staff[LastName],staff))  //To change from rows to columns



7. Employee Details Lookup (Advanced Lookup with Error Handling)
Functions Used: XLOOKUP, IFERROR

Purpose: To improve lookup accuracy and handle missing values.

Application:
XLOOKUP is a more powerful alternative to VLOOKUP.

IFERROR prevents errors when no match is found.

8. Highest Paid Employee
Functions Used: XLOOKUP + MAX

Purpose: To find and return the details of the highest-paid employee.

Example:

=XLOOKUP(MAX(Staff[Salary]),Staff[Salary],Staff[First Name]&" " Staff[Last Name])


9. Employees Who Joined in March
Functions Used: FILTER + MONTH

Purpose: To filter employees who joined in March.

Example:

=FILTER(Staff[EmpID]:[Last Name]), MONTH (Staff[Start Date]) =3)


10. Department Report: Headcount, Salaries & % Difference from Average

Functions Used: UNIQUE, SUMIFS, COUNTIFS, #, CONDITIONAL FORMATTING

Purpose: To create a structured department-wise report.

Application:
SUMIFS & COUNTIFS calculate total salaries and employee counts.

CONDITIONAL FORMATTING highlights values based on conditions.


![Image](https://github.com/user-attachments/assets/265c42f5-38b5-4641-8b88-98bcf81a6286)

**Conclusion**

Aggregated calculations: COUNTIFS, SUMIFS, AVERAGEIFS for grouping data.

Dynamic filtering: FILTER function for extracting data based on conditions.

Ranking functions: MIN, MAX, LARGE, SORT, TAKE for salary insights.

Lookup techniques: VLOOKUP, XLOOKUP, INDEX+MATCH for data retrieval.

Data visualization: CONDITIONAL FORMATTING for highlighting key metrics.
