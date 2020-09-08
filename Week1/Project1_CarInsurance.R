
#################################################
#################################################
#
# Project Name: Assignment 1
# Author: Shree Adhikari
# Supporting File: CarInsurances.xlsx
# Project date: 8/27/2020
# Version:1 
#
##############################################

##############################################
#Question 1
#Read the dataset in CarInsurances.xlsxPreview the document into R. 
#Call the loaded data Insurance. Make sure that you have the directory set
#to the correct location for the data.
##############################################

# load readxl library
library(readxl)



# Read CarInsurance.xlsx and call the data Insurance. also view the data
Insurance <- read_excel("week1/CarInsurances.xlsx")
View(Insurance)

##############################################
#Question 2
#How many rows in the data set? What do the rows represent?
##############################################

nrow(Insurance)

##############################################
#Question 3
#How many columns in the data set? What do the columns represent?
##############################################

NCOL(Insurance)

##############################################
# Question 4
#Assign the first eight rows of the data set to a variable: first.eight.rows 
#and print it out using print() function.
##############################################

first.eights.rows <- head(Insurance,8)
print(first.eights.rows)

##############################################
# Question 5
#Assign the last five rows of the data set to a variable: five.rows and print it out 
#using print() function.
##############################################

five.rows <- tail(Insurance,5)
print(five.rows)

##############################################
# Question 6
#List all objects in the memory using two methods.
##############################################
ls()
objects()

##############################################
# Question 7
#7.1What is the mean of MRC (annual premium of Minimum Required Coverage)?
#7.2What is the mean of FC (annual premium of Full Coverage)?
#7.3What is the mean of AD (annual premium differences between MRC and FC)?

##############################################

summary(Insurance)




 