# hospital-data  
  
The data for this assignment comes from the Hospital Compare web site (http://hospitalcompare.hhs.gov)
run by the U.S. Department of Health and Human Services. The purpose of the web site is to provide data and
information about the quality of care at over 4,000 Medicare-certified hospitals in the U.S. This dataset essentially
covers all major U.S. hospitals.  
  
We will use the _read_ function to load the csv dataset onto our workspace:  
`outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")` 
Display the first 6 rows of the dataset using the _head_ function:  
`head(outcome)`  
  
## Task 1: Plot 30 Day Mortality Rates For Heart Ataacks  
To make a simple histogram of the 30-day death rates from heart attack (column 11 in the outcome dataset),
run:  
`outcome[, 11] <- as.numeric(outcome[, 11])`  
`hist(outcome[, 11])`
  
## Task 2: Finding the best hospital in a state  
To find the best hospital in a state depending on the provided outcome, I wrote a function named _best.R_, which takes in the name of a state and an outcome as input and gives the name of the hospital in that state with the lowest mortality rate for the provided outcome as the output.  
  
## Task 3: Ranking hospitals by outcome in a state
