# Performance Dashboard

## Problem Statement

This **Power BI Performance Dashboard** provides key business insights by analyzing **revenue, profit, customers, and product performance**. The dashboard includes **interactive visualizations** to help stakeholders make data-driven decisions.  


### Steps followed 

- Step 1 : Loaded the dataset into Power BI Desktop from an Excel file using the Get Data option.
- Step 2 : In Report View, used a Stacked Bar Chart with Channel on the Y-axis and Total Revenue on the X-axis, dragging both from the same table and segmenting by year for comparison.
- Step 3 : Used a Stacked Column Chart under Visualizations to analyze Revenue by Product; since Product Name and Total Revenue were in different tables, I used Data Modeling to establish a connection, then applied formatting to highlight max and min values.
- Step 4 : Used a Pie Chart to display the top 7 customers based on revenue, applied sorting and conditional formatting for better visualization.
- Step 5 : Displayed Total Revenue by city using Bing Maps.
- Step 6 : Used DAX for Profit Calculation, first computing Cost as Total Unit Cost * Order Quantity, then calculating Profit as Total Revenue - Cost. 

  Following DAX expressions were written to find Profit,

     Cost = [Total Unit Cost] * [Order Quantity]
     
     Profit = [Total Revenue] - [Cost]

- Step 7 : Visual filters (Slicers) were added for selecting Date and Period to enable dynamic filtering 
- Step 8 : Added two Card visuals to the canvas—one for Total Revenue and the other for Total Quantity to highlight key metrics.
- Step 9 : Added three dropdown slicers to the dashboard for analyzing data by selecting Products, Channels, and Customers.

 
 # Report Snapshot (Power BI DESKTOP)

 ![Image](https://github.com/user-attachments/assets/c7402541-7f20-4369-8243-8b63f5d0e08d)

# Insights

A single page report was created on Power BI Desktop

Following inferences can be drawn from the dashboard;

###  Key Metrics & KPIs 
- Total Revenue: $25.97M  
- Total Quantity Sold: 11K Units  
- Total Profit (DAX Calculation): $57.79M  

### Key Visualizations & Analysis 
1. Top 7 Customers
   - Displays revenue contribution by top customers.  
   - Helps identify key clients driving business growth.  

2. Total Revenue by City 
   - Interactive map visualization shows revenue distribution across different cities.  
   - Useful for geographic sales analysis.  

3. Revenue by Channel and Year
   - Compares revenue trends across Distributor, Export, and Wholesale channels over the years (2017-2019).  
   - Helps in understanding sales performance across different channels.  

4. Revenue by Products  
   - Highlights revenue contribution of different products.  
   - Helps in identifying top-selling products and low-performing ones. 

