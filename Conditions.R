# Conditions
# The if Statement
a <- 33
b <- 200

if (b > a) {
  print("b is greater than a")
}
# Else If
a <- 33
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print ("a and b are equal")
}

#If Else

a <- 200
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}

# else without else if
a <- 200
b <- 33

if (b > a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
}
# Nested If Statements
x <- 41

if (x > 10) {
  print("Above ten")
  if (x > 20) {
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
}
# AND OR Operators
#AND
#The & symbol (and) is a logical operator

a <- 200
b <- 33
c <- 500

if (a > b & c > a) {
  print("Both conditions are true")
}
# OR
# The | symbol (or) is a logical operator
a <- 200
b <- 33
c <- 500

if (a > b | a > c) {
  print("At least one of the conditions is true")
}


