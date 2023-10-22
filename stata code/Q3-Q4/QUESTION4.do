// Load the dataset from the provided URL
use http://estebanch.com/ECO4421/HW02/question5.dta

// a) Find the average salary and the average tenure in the sample
summarize salary
local avg_salary = r(mean)
summarize tenure
local avg_tenure = r(mean)

// Display the average salary and average tenure
display "Average Salary: " `avg_salary'
display "Average Tenure: " `avg_tenure'

// b) Identify how many CEOs are in their first year as CEO
count if tenure == 1
local ceos_first_year = r(N)

// Display the number of CEOs in their first year
display "CEOs in First Year: " `ceos_first_year'

// c) Estimate the values of the parameters β0 and β1 for the simple regression model
regress salary tenure

// d) On average, what is the predicted increase in salary given one additional year as CEO?
display "Predicted Increase in Salary per Year: " _b[tenure]

// e) How much of the variation in salary is explained by years as CEO?
display "R-squared: " e(r2)

// f) Is years as CEO a good predictor of the variation in CEO salary? Explain.
// You can assess this based on the coefficient significance and R-squared value.
