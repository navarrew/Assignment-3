## Assignment 3 for R Programming Course

## Will open 

best <- function(state, outcome) {
        library(dplyr)
        outcome_data <- read.csv("data/outcome-of-care-measures.csv", colClasses = "character")
        state_subset <<- filter(outcome_data, State == state) 
}
## Check that state and outcome are valid
## Return hospital name in that state with lowest 30-day death
## rate