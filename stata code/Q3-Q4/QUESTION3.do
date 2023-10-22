// Load the dataset from the provided URL
use http://estebanch.com/ECO4421/HW02/question4.dta

// a) Use the answers from question 1 to get the values for β0 and β1
// Assuming you've already estimated β0 and β1 in question 1
local beta0_value = -0.5
local beta1_value = 1.5

// b) Generate the predicted values of y using the loaded coefficients
gen yhat = `beta0_value' + `beta1_value' * x

// c) Calculate the mean of the true value of y and compare it to the mean of the predicted value of y
summarize y, meanonly
local mean_true_y = r(mean)
summarize yhat, meanonly
local mean_predicted_y = r(mean)

// Compare the means
display "Mean of True y: " `mean_true_y'
display "Mean of Predicted y: " `mean_predicted_y'

// d) Generate the sample error term
gen error = y - yhat

// e) Derive the value of R-squared
corr y yhat

// f) How much of the variation in y is explained by β1
// You can interpret the R-squared value obtained in (e) for this.

