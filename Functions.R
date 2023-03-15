#R Functions
#A function is a block of code which only runs when it is called.

#Creating a Function
welcome_fun <- function(){
  print("Hello Asya")
}
# call function
welcome_fun()
#  function with Arguments
#Information can be passed into functions as arguments.
fname_function <- function(fname){
  paste("fname:",fname)
}
fname_function("Asya")
#Parameters or Arguments?
# The terms "parameter" and "argument" can be used for the same thing
# A parameter is the variable listed inside the parentheses in "the function definition".
# An argument is the value that is sent to the function "when it is called".
my_function <- function(fname, lname) {
  paste(fname, lname)
}

my_function("Asya", "Ahmed")
# Default Parameter Value
country_function <- function(country = "Egypt") {
  paste("I am from", country)
}
country_function() # will get the default value, which is Egypt
country_function("USA")

#Return Values
mult_function <- function(x) {
  return (5 * x)
}
print(mult_function(2))
print(mult_function(5))
print(mult_function(9))
# Nested Functions
#There are two ways to create a nested function:
#  1.Call a function within another function.
#  2.Write a function within a function.

#Call a function within another function:

Nested_function <- function(x, y) {
  a <- x + y
  return(a)
}

Nested_function(Nested_function(2,2), Nested_function(3,3))

#Write a function within a function:

Outer_func <- function(x) {
  Inner_func <- function(y) {
    a <- x + y
    return(a)
  }
  return (Inner_func)
}
#we cannot directly call the function because 
#the Inner_func has been defined (nested) inside the Outer_func.
#We need to call Outer_func first in order to call Inner_func as a second step
#We need to create a new variable called output 
#and give it a value, which is 3 here.
output <- Outer_func(3) # To call the Outer_func
#We then print the output with the desired value of "y",
#which in this case is 5.
output(5)
#The output is therefore 8 (3 + 5).
# Recursion
tri_recursion <- function(k) {
  if (k > 0) {
    result <- k + tri_recursion(k - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}
#tri_recursion() is a function that we have defined to call itself ("recurse").
#We use the k variable as the data, which decrements (-1) every time we recurse. 
#The recursion ends when the condition is not greater than 0 (i.e. when it is 0).
tri_recursion(6)

#Global Variables
#Variables that are created outside of a function are known as global variables.
txt <- "awesome"
my_function <- function() {
  paste("R is", txt)
}

my_function()

txt <- "great"   # global variable
my_function <- function() {
  txt = "fantastic" # local variable
  paste("R is", txt)
}

my_function()

txt # print txt
# The Global Assignment Operator:
# To create a global variable inside a function,
#we can use the global assignment operator <<-

my_function <- function() {
  txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

print(txt)
# change the value of a global variable inside a function
txt <- "awesome"
my_function <- function() {
  txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

paste("R is", txt)
