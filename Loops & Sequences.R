# Loops
# R While Loops
# With the while loop we can execute 
#a set of statements as long as a condition is TRUE
i <- 1
#Print i as long as i is less than 6
while (i < 6) {
  print(i)
  i <- i + 1 #increment i, or else the loop will continue forever.
}

# Break
# With the break statement, we can stop the loop even if the while condition is TRUE

i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  # The loop will stop at 3
  if (i == 4) {
    break
  }
}

# Next
# With the next statement, we can skip an iteration without terminating the loop:

i <- 0
while (i < 6) {
  i <- i + 1
 # Skip the value of 3:
  if (i == 3) {
    next
  }
  print(i)
}
# If .. Else Combined with a While Loop
dice <- 1
while (dice <= 6) {
  if (dice < 6) {
    print("No Yahtzee")
  } else {
    print("Yahtzee!")
  }
  dice <- dice + 1
}

# ===============================================================

# for loop
# A for loop is used for iterating over a sequence:
# The for loop does not require an indexing variable
#to set beforehand, like with while loops.
for (x in 1:10){
  print(x)
}
# Print every item in a list:

fruits <- list("apple", "banana", "cherry")
for (x in fruits) {
  print(x)
}
# Print the number of dices
dice <- c(1, 2, 3, 4, 5, 6)

for (x in dice) {
  print(x)
}
# Break with for

fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  #Stop the loop at "cherry"
  if (x == "cherry") {
    break
  }
  print(x)
}
# Next with for 
fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "banana") {
    next
  }
  print(x)
}
# If .. Else Combined with a For Loop
dice <- 1:6

for(x in dice) {
  if (x == 6) {
    print(paste("The dice number is", x, "Yahtzee!"))
  } else {
    print(paste("The dice number is", x, "Not Yahtzee"))
  }
}
# Nested Loops

adj <- list("red", "big", "tasty")

fruits <- list("apple", "banana", "cherry")
#Print the adjective of each fruit in a list
for (x in adj) {
  for (y in fruits) {
    print(paste(x, y))
  }
}

# Sequence
1:5 # sequences
10:1 # sequences descending order
8.5:4.5 # sequences
1:5 + 1 # sequence then addition
1:5 + 10:14 # add two sequences
(1:5) ^ 2 # Sequence of powers of 2
seq( from=1, to=10, by=2 ) # from 1 to 10 with step 2
seq( from=1, to=10, by=0.5 )# from 1 to 10 with step 0.5
seq(0, 10, by=2) # sequences
seq(by=0.05, from=2, to=2.7) # from 2 to 2.7 with step 0.05
seq(1,5,length.out=20) #from 1 to 5 and the length of the sequence is 20 but we don't know the step
seq(300, by=0.2,length.out =50)#from 300  with step 0.2 the length of the sequence is 50 but we don't know the destination
# get the length of the sequence
length(seq(1,20,0.003))
length(seq(1, 100 ,by=5))
# Repeat
rep(2, 3) # repeat 2 three times
rep( 6,10 ) # repeat 6 ten times
rep("Hello",3) # repeat hello three times
rep(1:5, times=3) # repeat from 1 to 5 three time
rep(1:5, each = 3) # repeat  each number from 1 to 5 three time
rep(1:5, times = 1:5) # repeat the first number "1" one time the third number "2" to times and so on.
rep(1:5, length.out = 7) # repeat from 1 to 5 but make the length of the output vector 7
# using repeat and sequence produce  the following:
# 0  0  0  0  0  4  4  4  4  4  8  8  8  8  8 12 12 12 12 12 16 16 16 16 16
#first solution
rep(seq(from=0,to=16,by=4),each=5)
#second solution
rep((0:4)*4, each=5)