# Vectors 
#A vector is simply a list of items that are of the same type.
# Vector of strings
colors <- c("blue", "red", "orange","green","pink")

# Print fruits
colors

# Vector of numerical values
numbers <- c(1, 2, 3)
numbers
# Vector with numerical values in a sequence
sec_numbers <- 1:10

sec_numbers
# Vector with numerical decimals in a sequence
numbers1 <- 1.5:6.5
numbers1
# Vector with numerical decimals in a sequence where the last element is not used
numbers2 <- 1.5:6.3
numbers2
# Vector of logical values
log_values <- c(TRUE, FALSE, TRUE, FALSE)

log_values
#Vector Length
fruits <- c("banana", "apple", "orange")
length(fruits)
# Sort a Vector

fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)  # Sort a string alphabetically 
sort(numbers) # Sort numbers ascendingly
sort(numbers,decreasing = TRUE) #descending
rev(sort(numbers)) # Sort numbers in descending order
rev(numbers) # reverse the order of vector

# class of vector
class(fruits)
class(numbers)

# Hyprid vector

mix <- c(15, T, "A") # as we have mentioned the vector is simply a list of items that are of the same type.
# so it will convert the other types to character
mix
is.numeric(mix[1])
#Repeat Vectors
repeat_each <- rep(c(1,2,3), each = 3)

repeat_each
#Repeat the sequence of the vector:
repeat_times <- rep(c(1,2,3), times = 3)

repeat_times
#Repeat each value independently:
repeat_indepent <- rep(c(1,2,3), times = c(5,2,1))

repeat_indepent
# Generating Sequenced Vectors

seq_vec <- seq(from = 0, to = 100, by = 20)

seq_vec
seq_v <- (1:5) ^ 2
seq_v
# using sequence and repeat with sequence
x1<- c(1, 1:3, c(5,8,11),13, rep(20,3), seq(25,30,2))
x1
length(x)
# Ex find  -5 10  9  8  7  6  1  1  2  2  3  3

x2 <- c(-5,10:6,rep(1:3,each=2))
x2
# number of character in each item in a string vector
sn <- c("Sheena", "leads", "Sheila", "needs")
class(sn)
length(sn)
nchar(sn)
# Access Vectors
#can access the vector items by referring to its index number inside brackets []
# The first item has index 1
fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Access the first item (banana)
fruits[1]
# Access two items
fruits[2:3]
# Access access multiple elements 
#by referring to different index positions with the c() function:

fruits[c(1, 3)]
# access all items except the ones specified using negative index numbers 
fruits[-3]
# Change an Item:
# Change "banana" to "pear"
fruits[1] <- "pear"

# Print fruits
fruits

# Logical operators with vectors

name <- c("Asya","Ahmed","Mariam","Dody")
age <- c(10,20,30,23)
gender <-c("F","M","F","F")
Salary<- c(12,9,8,11,7)
#Get the salary of females
f_salary<- Salary[gender == "F"]
f_salary
# Get the name of all females
f_names <- name[gender=="F"]
f_names
# get name of the people their age <= 20
name[age <= 20]

# Vector functions
numbers3 <- c(2,3,4,10,12,20,100)
numbers3
sum(numbers3)
length(numbers3)
#Mean
mean_numbers <- sum(numbers3)/length(numbers3)
mean_numbers
mean(numbers3)
# Vector with null values
x3 <- c(10,7,12,14,5,3,9,32,NA,NA)
# we can't get the sum or the mean of the vector that contains null values
sum(x3)
mean(x3)
is.na(x3)
# how to solve it?
# first solution:  using logical operator remove nulls then get the sum
x3<- x3[!is.na(x3)]
sum(x3)
# second solution set na.rm argument to true in sum function
sum(x3,na.rm=T)
# maximum & minimum
max(x3)
min(x3)
# to get the median we should sort the value of the vector first
sort(x3)
median(x3)
var(x3) # variance
sqrt(var(x3)) # standard deviation
sd(x3) # standard deviation
summary(x3) # summary statistics
# Combine Vectors by Rows using rbind(v1,v2,v3)
x4 <- c(100,73,2,1,53,33,93,3)

rbind(x3,x4)
#Combine Vectors by Colums 
cbind(x3,x4)
# Excercise get the correlation and summary for the following vectors
Age<- c(20,30,50)
Income<- c(18,90,100)
#age
summary(Age) # summary
mean(Age) # mean
var(Age) # variance
sd(Age) # standard deviation
#income
mean(Income)
var(Income)
sqrt(var(Income))
sd(Income)
# calculate Pearson Correlation
n<- length(Age)
n1<- n*sum(Age*Income)-(sum(Age)*sum(Income))
n2<- sqrt( n*sum(Age^2)-(sum(Age))^2 )
n3<- sqrt(n*sum(Income^2)-(sum(Income))^2)
corr<- n1/(n2*n3)
corr
cor(Age,Income) # cor buit in func

