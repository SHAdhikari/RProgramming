
#################################################
#################################################
#
# Project Name: Assignment 2
# Author: Shree Adhikari
# Supporting File: SP500.xlsx
# Project date: 9/5/2020
# Version:1   
#
##############################################


##############################################
#Question 1
#Read the dataset in SP500.xlsx into R. Call the loaded data SP500. 
#Make sure that you have the directory set to the correct location for the data.
##############################################

library(readxl)
sp500 <- read_excel("week2/SP500.xls",

                    sheet = "Data")
View(sp500)

##############################################
#Question 2
#How many rows are in the data set? 
#How many columns are in the data set?
##############################################

nrow(sp500)
ncol(sp500)

##############################################
#Question 3
#Select the following three columns: SP500, CPI, and Rate.
##############################################

subset(sp500,select=c(SP500,CPI,Rate))

##############################################
#Question 4
#Select the 10th, 100th, 500th, and 1500throws.
##############################################

sp500[c(10,100,500,1500),]


##############################################
#Question 5
# Select all the observations such that SP500 is greater 
#than 2000 or CPI is less than 100.
##############################################

sp500[(sp500$SP500>2000|sp500$CPI<100),]

##############################################
#Question 6
#Select the data such that Earnings greater than 50 and
#Rate less than 3 with columns SP500 and Dividend only.
##############################################

sp500[(sp500$Earnings>50&sp500$Rate<3),
      which(names(sp500) %in% c("SP500","Dividend"))]

##############################################
#Question 7
#Remove the entire columnofRate.
##############################################

subset(sp500,select=-c(Rate))


##############################################
#Question 8
#Real price is the inflation adjusted price, which is given by 
#the following formula: 
#Real Price at time t = (SP 500 price at time t)* CPI(t)/CPI(2018.09), 
#where CPI(2018.09) is the latest consumer price index in the data set. 
#Based on formula above, you need to add one more column, RealPrice.
##############################################

latest.cpi.ind<-which.max(sp500$Date) # Find row number with the most recent date because data might not be sorted by date
recentcpi <- sp500$CPI[latest.cpi.ind] # Find max cpi value corresponding to the most recent date
sp500$RealPrice <-sp500$SP500*sp500$CPI/recentcpi # Find real price
print(sp500)

##############################################
#Question 9
#Real earnings are the inflation adjusted earnings, which is given by the following formula:
#Real earnings at time t = (earnings at time t)* CPI(t)/CPI(2018.09), where CPI(2018.09) is the
#latest consumer price index in the data set. Based on formula above, you need to add one more column, RealEarnings.
##############################################

sp500$RealEarnings <-sp500$Earnings*sp500$CPI/recentcpi
print(sp500)

##############################################
#Question 10
#Price to earnings ratio is given by the following formula:
 # P/E Ratio = RealPrice/RealEarnings
#Based on the formula above, please add one more column, PERatio.

##############################################

sp500$PERatio <-sp500$RealPrice/sp500$RealEarnings
print(sp500)





