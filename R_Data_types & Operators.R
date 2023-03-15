# R Data Types
# In R, variables do not need to be declared with any particular type,
#and can even change type after they have been set
my_var <- 30 # my_var is type of numeric
my_var <- "Sally" # my_var is now of type character 
# Basic data types in R can be divided into the following types:

#numeric - (10.5, 55, 787)
#integer - (1L, 55L, 100L, where the letter "L" declares this as an integer)
#complex - (9 + 3i, where "i" is the imaginary part)
#character (a.k.a. string) - ("k", "R is exciting","11.5")
#logical (a.k.a. boolean) - (TRUE or FALSE)

# We can use the class() function to check the data type of a variable:

# numeric
x <- 10.5
class(x)

# integer
x <- 1000L
class(x)

# complex
x <- 9i + 3
class(x)

# character/string
x <- "R is exciting"
class(x)

# logical/boolean
x <- TRUE
class(x)

# Numbers 

#There are three number types in R:
  
#numeric
#integer
#complex
# =======================================
#Numeric
#A numeric data type is the most common type in R, and contains any number with 
#or without a decimal, like: 10.5, 55, 787:

x <- 10.5
y <- 55

# Print values of x and y
x
y

# Print the class name of x and y
class(x)
class(y)

# Integer
# Integers are numeric data without decimals.
# To create an integer variable, you must use the letter L after the integer value
x <- 1000L
y <- 55L

# Print values of x and y
x
y

# Print the class name of x and y
class(x)
class(y)

# Complex
# A complex number is written with an "i" as the imaginary part
x <- 3+5i
y <- 5i

# Print values of x and y
x
y

# Print the class name of x and y
class(x)
class(y)

# Type Conversion
# we can convert from one type to another with the following functions:

#as.numeric()
#as.integer()
#as.complex()

x <- 1L
class(x)
y <- 2
class(y)
x <- as.numeric(x)
x
class(x)
y <- as.integer(y)
y
class(y)
#=========================================================
# Strings
# Strings are used for storing text.
#A string is surrounded by either single quotation marks, or double quotation marks:

"hello"
'hello'

#Assign a String to a Variable
a <-"hi"
a
# Multiline Strings
b <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."
b
#However, note that R will add a "\n" at the end of each line break.
#This is called an escape character,and the n character indicates a new line
# use the cat() function to make the line breaks to be inserted at the same position as in the code

cat(b)
# String functions
str <- "Hello World!"

nchar(str) #  find the number of characters in a string

s <- "Hello World!"
# grepl function used to check if a character or a sequence of characters are present in a string
grepl("H", s)
grepl("Hello", s)
grepl("X", s)

str1 <- "Hello"
str2 <- "World"

paste(str1, str2) # merge/concatenate two strings
# Escape Characters

# To insert characters that are illegal in a string,
# we must use an escape character.

# An escape character is a backslash \ followed by the character we want to insert.
# example of an illegal character is a double quote inside
#a string that is surrounded by double quotes :
#str <- "We are the so-called "Vikings", from the north."
# the previous line will throw an error  "unexpected symbol in "str <- "We are the so-called "Vikings" "
# To fix this problem, use the escape character \":

str <- "We are the so-called \"Vikings\", from the north."
str
cat(str)
# Other escape characters in R:

# \\	 >>>>>> Backslash
# \n	 >>>>>> New Line
# \r	 >>>>>> Carriage Return
# \t	 >>>>>> tab
# \b   >>>>>> Backspace
# ==================================================
# Booleans (Logical Values)

10 > 9    # TRUE because 10 is greater than 9
10 == 9   # FALSE because 10 is not equal to 9
10 < 9    # FALSE because 10 is greater than 9
#compare two variables
a <- 10
b <- 9

a > b
# Operators
# Arithmetic Operators
5+5 # addition
8-16 # subtraction
5*5  # multiplication
60/15  # division
5*5 + 2 # multiplication and addition

5/5 - 3 # division and subtraction

2^5 #Exponent
2**5 #Exponent

10 %% 2 # Modulus

# Assignment Operators

my_var <- 3

my_var <<- 3

3 -> my_var

3 ->> my_var

my_var # print my_var
# Comparison operators
x = 2
y=3
x == y # Equal
x != y #Not equal	
x >y # Greater than	
x<y	# Less than	
x >= y	 #Greater than or equal to	
x <= y	# Less than or equal to	
#Logical Operators
# & 	Element-wise Logical AND operator
#&&	Logical AND operator 
#|	 Element wise- Logical OR operator
#||	Logical OR operator
# !	Logical NOT - returns FALSE if statement is TRUE




