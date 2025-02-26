## Excel Data Analysis - Real-World Example
Introduction
In this project, I explored real-world business questions using Excel's key features, including tables, formulas, PivotTables, charts, slicers, and dynamic arrays. Below is a detailed explanation of the steps I followed for each business question.

## Key Learnings & Implementations
1️⃣ Understanding & Using Excel Tables

📌 I learned why Excel tables are crucial for data organization. They provide structured referencing, easy filtering, and auto-expanding functionality when new data is added.

✅ Steps Taken:


- Converted raw data into an Excel Table (Ctrl + T)

- Applied filters and sorting to quickly explore data

- Used structured references instead of regular cell references

![Image](https://github.com/user-attachments/assets/4f4c65ee-0fef-4f50-8434-93a089286410)

![Image](https://github.com/user-attachments/assets/7d4b1e0d-302d-479c-83d0-09752a5615da)

![Image](https://github.com/user-attachments/assets/f06ad728-50b1-48c5-8aef-b313d5ec74e2)




2️⃣ Using Total Row & SUBTOTAL Functions

📌 I enabled the Total Row in the table to quickly calculate SUM, AVERAGE, COUNT, etc.

3️⃣ Working with Excel Cell References

📌 I explored different types of cell references:

Relative Reference (A1) - Changes when copied

Absolute Reference ($A$1) - Stays fixed

Mixed Reference ($A1 or A$1) - Partially fixed

Spill References - Used with dynamic arrays

✅ Example Formula:

=A2 * B2  → (Relative Reference)

=$A$2 * B2  → (Mixed Reference)

These concepts helped in formula flexibility and efficiency.

4️⃣ IF / IFS Functions (Bonus Calculation Example)

📌 Bonus Calculation Logic:

If tenure < 3 years → 2% bonus
If tenure < 5 years → 5% bonus
Else → 10% bonus

✅ Formula Used:

=IF([@Tenure]<3,2%, IF([@Tenure]<5, 5%, 10%))* [@salary]


📌 Using the new IFS() function introduced in Excel:


=IFS([@Tenure]<3,2%,[@Tenure]<5, 5%,TRUE, 10%)* [@salary]

The IFS() function simplifies nested IF conditions, making formulas easier to read.

5️⃣ Pivot Tables for Department-wise Summary

📌 I created Pivot Tables to generate a department-wise salary report.

✅ Steps Taken:

- Inserted a Pivot Table (Insert > PivotTable)
- Added Department to the Rows section
- Added Salary to the Values section
- Used SUM, AVERAGE, COUNT for analysis

![Image](https://github.com/user-attachments/assets/a7277d85-a9fb-4824-ab7d-a367eea64c96)


📌 Issue Faced & Solution:

The PivotTable Fields panel disappeared → Fixed by enabling it:

Right-click on Pivot Table → Select Show Field List

6️⃣ Using Slicers & Filters for Interactive Analysis

📌 I added Slicers to visually filter PivotTable data based on department and experience level.


✅ Steps Taken:

- Insert > Slicer → Selected department coulumn
- Used slicers to quickly filter and analyze data
📌 How to Remove Slicers?

Click on the slicer → Press Delete

7️⃣ Creating Box Plots for Salary Distribution

📌 I used Box Plots to analyze salary distribution by gender (Male vs. Female employees).

✅ Steps Taken:


- Selected salary data
- Used Insert > Box Plot 
- Compared salary medians & variations between male and female employees

![Image](https://github.com/user-attachments/assets/834a8901-92d1-46f5-beec-fd079a4b08ec)



📌 Key Insights from Box Plot Analysis:

- Identified salary range variations
- Found potential outliers in salary data

## Summary of Learning Outcomes
1️⃣ How to structure data efficiently using Excel Tables

2️⃣ The importance of filtering and sorting for data analysis

3️⃣ Cell references (Relative, Absolute, Mixed, Spill) for formulas

4️⃣ IF & IFS functions for logical decision-making

5️⃣ Pivot Tables for summarizing and analyzing data

6️⃣ Slicers for interactive filtering

7️⃣ Box Plots for statistical insights on salary distribution




