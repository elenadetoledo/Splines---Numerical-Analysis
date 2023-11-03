# Splines---Numerical-Analysis
Implementation of Splines to solve a Numerical Analysis Problem. Solved by Elena de Toledo, Blanca González and Rodrigo de Lera.

Given a spreadsheet containing data about 6 different variables (income, life expectancy, babies per women, C02 emissions per person, child mortality and population) for many different countries between the years 1950 - 2019 (for some countries some of these years had no available data). 

Choose 1 of the 6 variables, and 5 of the many countries, import data to MATLAB and create relevant table.
Now, create for each country a spline function for each decade for each country.
Use the years 0,3,6 and 9 (or 8 when 9 not available) as nodes of interpolation for the creation of the spline.

Finally, measure the difference between the actual result and the predictions made on the years 1,2,4,5,7,8 of every decade.

Output:
  - Table with measured errors per country per decade, labelled
  - Paragraph with an analysis on causes of larger errors
  - Plot for each country including in same picture real data and spline functions constructed
    
