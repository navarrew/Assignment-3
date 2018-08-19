## Assignment 3 for R Programming Course

## Will open 

##outcomes are “heart attack”, “heart failure”, or “pneumonia”

best <- function(state, outcome) {
        library(dplyr)
        #        if (outcome == "heart attack") {outcome_col <-"Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"}
        #        else if(outcome == "heart failure") {outcome_col <-"Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"}
        #        else if(outcome == "pneumoniae") {outcome_col <- "Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"}
        #       else print("Not valid")
        
        if (outcome == "heart attack") {outcome_col <- 11}
        else if(outcome == "heart failure") {outcome_col <-17}
        else if(outcome == "pneumoniae") {outcome_col <- 23}
        else print("Not valid")
        
        outcome_data <- read.csv("data/outcome-of-care-measures.csv", colClasses = "character")
        outcome_data_trimmed <- outcome_data[,c(2,7,outcome_col)]
        names(outcome_data_trimmed)<-c("Hospital","State","Outcome")
        state_subset <<- filter(outcome_data_trimmed, State == state)
        state_subset[ ,3] <<- as.numeric(state_subset[ ,3])
        final_frame <<- state_subset[complete.cases(state_subset),]
        final_frame  %>% rename_at( 3, ~"RenamedColumn" )
        str(final_frame)
        
        
}
## Check that state and outcome are validrm
## Return hospital name in that state with lowest 30-day death
## rate