# R is a popular programming language used for statistical 
#computing and graphical presentation.
#Its most common use is to analyze and visualize data.

#To output text in R, use single or double quotes:
"Hello World"
#However, R does have a print() function available if you want to use it. 
print("HellO")
#To output numbers, just type the number (without quotes)
5
10
40
#R as a calculator 
5+5 # addition
8-16 # subtraction
5*5  # multiplication
60/15  # division
5*5 + 2 # multiplication and addition

5/5 - 3 # division and subtraction

2^5 #power
2**5 #power
4^0.5 # the square root
4^(1/2) # the square root

10 %% 2 # Modulus 
9 %%2 #Modulus 

# Built-in Math Functions
max(5, 10, 15) #find the highest number 
min(5, 10, 15) #find the lowest number 
sqrt(16) # the square root of a number
abs(-4.7) # the absolute (positive) value of a number
ceiling(1.4) # rounds a number upwards to its nearest integer
floor(1.4)   #rounds a number downwards to its nearest integer
log(3)#natural logarithm
log(100, 10) # log 100 base 10
log10(100)  #log 100 base 10
log(520,10) # log 520 base 10
log(1000,10) # log 1000 base 10
log(exp(pi)) # log, exponential, pi
sin(30) # sin function
cos(30) # cosine
tan(30) # tan
sin(30)/cos(30) # tan


# Creating Variables

#Variables are containers for storing data values.

#To assign a value to a variable, use the <- sign. 
name <- "Asya" 
age <- 25
name # auto-print the value of the name variable
print(name) # print the value of the name variable
age
# Concatenate Elements

#You can also concatenate, or join, two or more elements,
#by using the paste() function.
#To combine both text and a variable, R uses comma (,):

text <- "world"

paste("hello", text)
text1 <- "R is"
text2 <- "awesome"

paste(text1, text2)
#For numbers, the + character works as a mathematical operator:
  
  
num1 <- 5
num2 <- 10
num1 + num2
# Multiple Variables
# Assign the same value to multiple variables in one line
var1 <- var2 <- var3 <- "red"
# Print variable values
var1
var2
var3
# Variable Names
#A variable name must start with a letter and can be a combination of
#letters, digits, period(.)and underscore(_). If it starts with period(.), 
#it cannot be followed by a digit.
#A variable name cannot start with a number or underscore (_).
#Variable names are case-sensitive (age, Age and AGE are three different variables)
#Reserved words cannot be used as variables (TRUE, FALSE, NULL, if...).

# Legal variable names:
myvar <- "Asya"
my_var <- "Asya"
myVar <- "Asya"
MYVAR <- "Asya"
myvar2 <- "Asya"
.myvar <- "Asya"

# Illegal variable names:
#2myvar <- "Asya"
#my-var <- "Asya"
#my var <- "Asya"
#_my_var <- "Asya"
#my_v@ar <- "Asya"
#TRUE <- "Asya"

# variable names are case-sensitive.






