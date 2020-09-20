
#################################################
#################################################
#
# Project Name: Assignment 3
# Author: Shree Adhikari
# Supporting File: BlackFriday.xlsx
# Project date: 9/11/2020
# Version:1
#
##############################################


##############################################
#Question 1
#Read the data set in BlackFriday.xlsx into R. Call the loaded data BlackFriday
#Make sure that you have the directory set to the correct location for the data.
##############################################

library(readxl) #load the library
BlackFriday <- read_excel("BlackFriday.xlsx",
                    
                    sheet = "BlackFriday")
View(BlackFriday )

##############################################
#Question 2
#Find the average of purchase amount using for loop.
##############################################


psum <- 0                             #initialize sum to 0
number.row <- nrow(BlackFriday)  #number of rows to loop through in the data frame
for(i in c(1:number.row)){
psum <- psum+BlackFriday[i,"Purchase"]
}
for.average <- psum/number.row

print(paste("Average purchase amount using For loop is:",round(for.average,digits=2)))




##############################################
#Question 3
#Find the average of purchase amount using while loop.
##############################################

psum <- 0                             # initialize sum to 0
i <- 1                                # initialize i to 1
number.row <- nrow(BlackFriday)  # number of rows to loop through in the data frame
while ( i <= number.row){
  psum=psum+ BlackFriday[i,"Purchase"]
  i <- i+1                            # increase the index i by 1
}
while.average <- psum/number.row

print(paste("Average purchase amount using While loop is:",round(while.average,digits=2)))

##############################################
#Question 3
#Find the average of purchase amount using repeat loop.
##############################################

psum <- 0                              # initialize sum to 0       
i <- 1                                 # initialize i to 1           
number.row <- nrow(BlackFriday)   #number of rows to loop through in the data frame
repeat{
    psum=psum+ BlackFriday[i,"Purchase"]
    i <- i+1                           # increase the index i by 1
  if (i > number.row){
    break                              # exit if index is > number of rows
  }
}
repeat.average <- psum/number.row

print(paste("Average purchase amount using Repeat loop is:",round(repeat.average,digits=2)))

##############################################
#Question 5
#Find the average of purchase amount for female shoppers using for loop.
##############################################

for.female.sum <- 0                              # initialize female sum to 0
for.female.count <- 0                            # initialize female count to 0
number.row <- nrow(BlackFriday)             #number of rows to loop through in the data frame
for(i in c(1:number.row)){
  if(BlackFriday[i,"Gender"]=='F'){
    for.female.sum =for.female.sum + BlackFriday[i,"Purchase"]  
    for.female.count <- for.female.count+1       # increase the female count by 1
  }

}
for.female.average <- for.female.sum /for.female.count

print(paste("Average purchase amount for female shoppers using For loop is:",round(for.female.average,digits=2)))


##############################################
#Question 6
#Find the average of purchase amount for female shoppers using while loop.
##############################################

while.female.sum <- 0                              # initialize female sum to 0
i <- 1                                             # initialize i to 1 
while.female.count <- 0                            # initialize female count to 0
number.row <- nrow(BlackFriday)               #number of rows to loop through in the data frame
while ( i <= number.row){
  if(BlackFriday[i,"Gender"]=='F'){
    while.female.sum =while.female.sum + BlackFriday[i,"Purchase"]  
    while.female.count <- while.female.count+1     # increase the female count by 1
  }
  i <- i+1                                         # increase index i by 1
}
while.female.average <- while.female.sum/ while.female.count

print(paste("Average purchase amount for female shoppers using While loop is:",round(while.female.average,digits=2)))

##############################################
#Question 7
#Find the average of purchase amount for female shoppers using repeat loop.
##############################################

repeat.female.sum <- 0                              # initialize female sum to 0
i <- 1                                              # initialize i to 1 
repeat.female.count <- 0                            # initialize female count to 0
number.row <- nrow(BlackFriday)                #number of rows to loop through in the data frame
repeat{
  if(BlackFriday[i,"Gender"]=='F'){
    repeat.female.sum =repeat.female.sum + BlackFriday[i,"Purchase"]  
    repeat.female.count <- repeat.female.count+1    # increase the female count by 1
  }
  i <- i+1                                          # increase index i by 1
  if (i > number.row){
    break                                           # exit if index is > number of rows
  }
}
repeat.female.average <- repeat.female.sum/repeat.female.count

print(paste("Average purchase amount for female shoppers using Repeat loop is:",round(repeat.female.average,digits=2)))

##############################################
#Question 8
#Find the differences between the average of purchase amount for female and male shoppers.
##############################################
# I decided to re-calculate female average again so that the code works even without previous codes
female.sum <- 0                                    # initialize female sum to 0
male.sum <- 0                                      # initialize male sum to 0
female.count <- 0                                  # initialize female count to 0
male.count <- 0                                    # initialize male count to 0
number.row <- nrow(BlackFriday)               #number of rows to loop through in the data frame
for(i in c(1:number.row)){
  if(BlackFriday[i,"Gender"]=='F'){
    female.sum =female.sum + BlackFriday[i,"Purchase"]  
    female.count <- female.count+1                 # increase the female count by 1
  } else if (BlackFriday[i,"Gender"]=='M') { 
    male.sum =male.sum + BlackFriday[i,"Purchase"]  
    male.count <- male.count+1                     # increase the male count by 1 
  } else {
    Print( " New gender found please add new gender to the code") # let user know that there are more than M/F gender in data
  }
  
}
female.average <- female.sum /female.count
male.average <- male.sum /male.count
female.male.difference <- female.average-male.average

print(paste("Differences between the average of purchase amount for female and male shoppers:",round(female.male.difference,digits=2)))
