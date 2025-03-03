## Netflix Dashboard Using Power BI

This Power BI dashboard provides an interactive analysis of Netflix’s content library using a CSV dataset containing details of movies and TV shows. The goal was to visualize trends, analyze key metrics, and provide insights into Netflix’s content distribution.


**Data Source & Preparation**

- Dataset Used: https://www.kaggle.com/datasets/shivamb/netflix-shows/data
- Data Cleaning & Transformation:
Removed duplicate rows and missing values.
Standardized column names for better readability.
Converted date columns into proper formats.
Ensured categorical data like ratings and genres were correctly classified.
-  Dashboard Components & Filters
The dashboard contains multiple visuals, slicers, and filters to make the analysis interactive.

**Filters & Slicers Used**

1) Show Type Filter:

Tool Used: Dropdown Slicer

Allows users to filter by Movies or TV Shows.
Helps in understanding whether Netflix focuses more on movies or series.

2. Release Year Filter:

Tool Used:  Dropdown Slicer

Filters content based on the year of release.
Helps analyze content trends over different periods.

3. Country Filter:

Tool Used:  Dropdown Slicer

Lets users select a specific country to see the number of shows available there.
Useful for understanding Netflix’s global reach.

4. Total Shows Summary (Cards)
Total Shows: 7,974

Total Movies: 5,690

Total TV Shows: 2,284

Insight: Movies dominate Netflix's catalog (71.36%) compared to TV Shows (28.64%).

5. Total Shows Summary (Cards)

Total Shows: 7,974

Total Movies: 5,690

Total TV Shows: 2,284

Insight: Movies dominate Netflix's catalog (71.36%) compared to TV Shows (28.64%).

6. Total Shows by Type (Donut Chart)

Shows proportion of Movies vs. TV Shows.

Key Observation: Netflix primarily has more movies than TV shows.

7. Movies & TV Shows by Year (Line Chart)

Shows content distribution over the years.

Key Observation: Sharp rise in Netflix content after 2000, with a peak after 2015.

Conclusion: Netflix has been aggressively expanding its library in recent years.

8. Total Directors (Donut Chart)

Total Directors: 4,168

Key Observation: 95.73% of directors worked on Movies, while only 4.27% worked on TV Shows.

Conclusion: Movies have more unique directors compared to TV Shows.

9. Total Shows by Ratings (Bar Chart)

Displays content count by age rating.

Key Insights:

TV-MA (Mature Audience) is the most common rating.
TV-14 & R-rated content are also highly available.
Very few shows are rated G or PG.
Conclusion: Netflix’s primary audience is adults and teenagers.

10. Total Shows by Country (Map)

Displays content availability by country.

Darker shades = More content from that country.

Key Observation: Netflix has a strong presence in the US, UK, and India.

Conclusion: Netflix has a global reach, but some countries contribute more content.


**Content Analysis**

✅ Netflix has a total of 7,974 shows, including:

5,690 Movies

2,284 TV Shows

This confirms that Netflix’s primary focus is on movies rather than TV shows.

✅ The top-producing country for Netflix content is the United States.

Other countries with high content production: India, Canada, UK, and Japan.

✅ The number of new releases increased significantly after 2000.

The highest number of movies and TV shows were released in 2018-2020.

Netflix’s content production peaked in 2020, likely due to increased demand during the pandemic.

📌 Ratings & Audience Preference

✅ The most common rating on Netflix is TV-MA (Mature Audience).

This suggests that Netflix has more content targeted at adults.
Other common ratings: TV-14, PG-13, TV-PG.

✅ Family-friendly content (G & PG ratings) is significantly lower.

✅ Popular genres on Netflix:

Drama is the most dominant genre across movies & TV shows.
Other popular genres: Comedy, Action, Thriller, Horror.

📌 Country-Specific Insights

✅ USA has the highest number of Netflix shows (both movies & TV shows).

✅ India ranks second, with a large number of Bollywood movies.

✅ Japan has a high number of anime series.

✅ European countries (UK, France, Germany) contribute significantly to Netflix’s content library.

📌 Trends & Growth Patterns

✅ Most content added to Netflix happened after 2015, showing rapid growth.

✅ Peak content addition was during 2018-2020, likely due to Netflix Originals expanding globally.

✅ Netflix continues to invest more in TV Shows post-2020 compared to Movies.

**DAX Measures & Calculations Used**

DAX (Data Analysis Expressions) was used for calculations. Some key DAX formulas include:

1️. Total Shows Count:

Total_Shows = CALCULATE(DISTINCT COUNT (netflix_titles[show_id]))


  2. Total Movies Count:

Movies = CALCULATE(DISTINCT COUNT(netflix_titles[show_id]), FILTER(netflix_titles,netflix_titles[type] = "Movies"))


3️. Total TV Shows Count:

Movies = CALCULATE(DISTINCT COUNT(netflix_titles[show_id]), FILTER(netflix_titles,netflix_titles[type] = "TV Shows"))

**Netflix PowerBI Dashboard**

https://github.com/Shobitha-Ann/Shobitha-Data-Analytics-Journey/blob/main/PowerBI_Netflix_Dashboard.pbix



**Conclusion** 

 What I Learned:

- Improved Power BI, Data Cleaning, and DAX Skills

- Explored different Power BI visuals

- Understood how to make interactive dashboards


