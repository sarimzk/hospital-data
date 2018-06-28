rankhospital <- function(state, outcome, num = "best") {
  ## Read outcome data
  ## Check that state and outcome are valid
  ## Return hospital name in that state with lowest 30-day death
  ## rate
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  newdata <- subset(data[order(data$Hospital.Name),], State == state)
  
  if (nrow(newdata) == 0) {
    stop("invalid state")
  }
  
  if (!outcome %in% c("heart attack", "heart failure", "pneumonia")) {
    stop("invalid outcome")
  }
  
  if(outcome == "heart attack"){
    column = 11
  }
  else if(outcome == "heart failure"){
    column = 17
  }
  else{
    column  = 23
  }
  
  vals   <- suppressWarnings(as.numeric(newdata[, column]))
  
  if(num == "best"){
    newdata[which.min(vals), 2]
  }
  else if(num == "worst"){
    newdata[which.max(vals), 2]
  }
  else{
    newdata[order(vals)[num], 2]
  }
}