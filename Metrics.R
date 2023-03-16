# Matrices
#A matrix is a two dimensional data set with columns and rows.

# Create a matrix
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)

# Print the matrix
thismatrix
#----------------------------------------------------------
# Create a matrix:
#byrow = TRUE means the matrix is filled by rows
M <- matrix( c(1:6), nrow = 2, ncol = 3, byrow = TRUE)

# Show it on the screen:
print(M)
class(M)
# Update column and rows names
colnames(M) <- c('C1', 'C2', 'C3')
rownames(M) <- c('R1', 'R2')
M
#----------------------------------------------------------

# create a matrix and set the name of rows and columns
# Store the names in a vector:
row_names = c("row1", "row2", "row3","row4")
col_names = c("col1", "col2", "col3")

# Create the matrix:
M <- matrix(c(10:21), nrow = 4, byrow = TRUE, 
            dimnames = list(row_names, col_names))

# Display the result:
print(M)
#----------------------------------------------------------

# Create a string matrix:
fruit_matrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

fruit_matrix
#----------------------------------------------------------

# Access Matrix Items
#           row,column
fruit_matrix[1,2]
# Access the whole row
fruit_matrix[2,]
# Access the whole column
fruit_matrix[,2]
# Access More Than One Row
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
# get all features in the first two rows
thismatrix[c(1,2),]
#Access More Than One Column
thismatrix[, c(1,2)]
#----------------------------------------------------------

# Add Rows and Columns
#Use the cbind() function to add additional columns in a Matrix:
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

# Print the new matrix
newmatrix
# Use the rbind() function to add additional rows in a Matrix:

newmatrix2 <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))
newmatrix2
#----------------------------------------------------------

#Remove Rows and Columns
thismatrix2 <- matrix(c("apple", "banana", "cherry", "orange", "mango", "pineapple"), nrow = 3, ncol =2)

#Remove the first row and the first column
thismatrix2 <- thismatrix2[-c(1), -c(1)]

thismatrix2
#----------------------------------------------------------

# Check if an Item Exists
#To find out if a specified item is present in a matrix,
#use the %in% operator:
fruitsmatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

"apple" %in% fruitsmatrix
#----------------------------------------------------------

# Number of Rows and Columns
nrow(fruitsmatrix) #Number of Rows
ncol(fruitsmatrix) # Number of columns
dim(fruitsmatrix) # the dimension of the matrix
# Matrix Length (num of rows * num of columns)
#Dimension = 2*2 = 4
length(fruitsmatrix)
#----------------------------------------------------------

#Loop Through a Matrix : two ways
# first one:
 for (i in fruitsmatrix){
   print(i)
 }
# second one
for (rows in 1:nrow(fruitsmatrix)) {
  for (columns in 1:ncol(fruitsmatrix)) {
    print(fruitsmatrix[rows, columns])
  }
}
#----------------------------------------------------------

# Combine two Matrices
# we can use the rbind() or cbind() function
#to combine two or more matrices together:

# Combine matrices
Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)
# Adding it as a rows
combined_matrix1 <- rbind(Matrix1,Matrix2)
combined_matrix1
# Adding it as a columns
combined_matrix2 <- cbind(Matrix1,Matrix2)
combined_matrix2
#----------------------------------------------------------
# Operations on matrix
M1 <- matrix(c(10:21), nrow = 4, byrow = TRUE)
M2 <- matrix(c(0:11),  nrow = 4, byrow = TRUE)
M1 + M2
M1- M2
M1 * M2 # Elementwise multiplication 
M1 / M2
dim(M1)
dim(M2)
M1 %*% t(M2) # matrix multiplication
# Example of the dot-product on vectors
a <- c(1:3)
class(a)
a*a # normal multiplication
a %*% a # dot product
a %*% t(a) # matrix multiplication

#-----------------------------------------------------------
# Matrix functions
M <- matrix(c(1,1,4,1,2,3,3,2,1), 3, 3)
exp(M) # # The exponential of matrix M
log(M) # The natural logarithm
mean(M) # mean 
min(M) # minimum
diag(M) # The diagonal of M:
solve(M) # Inverse
det(M) # Determinant
# Number of rows and columns:
nrow(M)
ncol(M)
# Sums of rows and columns:
colSums(M)
rowSums(M)
# Means of rows, columns, and matrix:
colMeans(M)
rowMeans(M)
mean(M)
