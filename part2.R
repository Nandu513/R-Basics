# Data Structures
# A data structure is a particular way of organizing data in a computer so that it can be used effectively. 
# The idea is to reduce the space and time complexities of different tasks.
 
# The most essential data structures used in R include: 
  # Vectors (creating, repeat, types,length, accessing, modifying, deleting, sorting)
  # Lists (create, access,length, modify, concat/merge, add/append, check element exists, delete element, list to vector, list ot matrix)
  # Matrices (create, special matrix, matrix metrics, accessing, modify, concat, loop)
  # Arrays  (create, types, naming, access, modify, remove, update)
  # Dataframes (create, structure, summary, access, expand, dim, add rows/columns, remove, combine)
  # Factors (create, check, access, subtract, modify, length, factors in data frames)
  # Tibbles


# Vectors (homogeneous data structures)
# Vectors(ordered collection of same data type)
# indexing of the vector will start from '1' and not from '0'

# Creating a vector 
# we can use the c function
# to combine the values as a vector.
# By default the type will be double
x = c(1, 3, 5, 7, 8)
print(x)
print(typeof(x))
print(class(x))
print(is.numeric(x))

# seq() function for creating
# a sequence of continuous values.
# length.out defines the length of vector.
Y<- seq(0, 10, length.out = 5) 
cat('using seq() function', Y, '\n') 

numbers <- seq(from = 0, to = 100, by = 20)
numbers

# use':' to create a vector 
# of continuous values.
Z<- 2:7
cat('using colon', Z)


# Repeat Vectors
repeat_each <- rep(c(1,2,3), each = 3)
repeat_each
repeat_times <- rep(c(1,2,3), times = 3) 
repeat_times


# numeric vector
v1<- c(4, 5, 6, 7)
class(v1)
# integer vector
v2<- c(1L, 4L, 2L, 5L) 
typeof(v2)

# Character vectors in R contain alphanumeric values and special characters. 
# by default numeric values 
# are converted into characters
v1<- c('geeks', '2', 'hello', 57) 
typeof(v1)
class(v1)

# logical vector
v1<- c(TRUE, FALSE, TRUE, NA)
class(v1)

# Length of vector
length(v1)

# Accessing vector elements
# using the '[]', symbol.
# Vectors in R are 1 based indexing unlike the normal C, python, etc format
# accessing elements with an index number.
X<- c(2, 5, 18, 1, 12)
cat('Using Subscript operator', X[2], '\n')
# by passing a range of values
# inside the vector index.
Y<- c(4, 8, 2, 1, 17)
cat('Using combine() function', Y[c(4, 1)], '\n')
cat(Y[c(2:5)])


# Modifying a vector
X<- c(2, 7, 9, 7, 8, 2)
# modify a specific element
X[3] <- 1
X[2] <-9
cat('subscript operator', X, '\n')
# Modify using different logics.
X[1:5] <- 0
cat('Logical indexing', X, '\n')
# Modify by specifying 
# the position or elements.
X<- X[c(3, 2, 1)]
cat('combine() function', X)


# Deleting a vector
y <- c(1,2,3,4,5)
y <- NULL
print(y)

# Sorting a vector
sort(X)
sort(X,decreasing = TRUE)




# List: 
# Lists are one-dimensional, heterogeneous data structures.
# The list can be a list of vectors, a list of matrices, a list of characters, a list of functions, and so on. 
# A list is a vector but with heterogeneous data elements. 
# A list in R is created with the use of the list() function.
# R allows accessing elements of an R list with the use of the index value. 
# In R, the indexing of a list starts with 1 instead of 0.

# Creating a list
# The first attributes is a numeric vector 
# containing the employee IDs which is created 
# using the command here
empId = c(1, 2, 3, 4)

# The second attribute is the employee name 
# which is created using this line of code here
# which is the character vector 
empName = c("Debi", "Sandeep", "Subham", "Shiba")

# The third attribute is the number of employees
# which is a single numeric variable.
numberOfEmp = 4

# We can combine all these three different
# data types into a list
# containing the details of employees
# which can be done using a list command
empList = list(empId, empName, numberOfEmp)
print(empList)
class(empList)

# Length of list
print(length(empList))

# Naming List Components
# Creating a named list
# Naming list components make it easier to access them.
my_named_list <- list(name = "Sudheer", age = 25, city = "Delhi")
# Printing the named list
print(my_named_list)
my_named_list$age

# Accessing R List Components
# Creating a list by naming all its components
empId = c(1, 2, 3, 4)
empName = c("Debi", "Sandeep", "Subham", "Shiba")
numberOfEmp = 4
empList = list(
  "ID" = empId,
  "Names" = empName,
  "Total Staff" = numberOfEmp
)
print(empList)

# Accessing components by names
cat("Accessing name components using $ command\n")
print(empList$Names)

# Access components by indices:
# Accessing a top level components by indices
cat("Accessing name components using indices\n")
print(empList[[2]])

# Accessing a inner level components by indices
cat("Accessing Sandeep from name using indices\n")
print(empList[[2]][2])

# Accessing another inner level components by indices
cat("Accessing 4 from ID using indices\n")
print(empList[[1]][4])


# Modifying Components of a List
cat("Before modifying the list\n")
print(empList)

# Modifying the top-level component
empList$`Total Staff` = 5

# Modifying inner level component
empList[[1]][5] = 5
empList[[2]][5] = "Kamala"

cat("After modified the list\n")
print(empList)


# Concatenation of lists
cat("Before concatenation of the new list\n")
print(empList)
# Creating another list
empAge = c(34, 23, 18, 45)
# Concatenation of list using concatenation operator
empList = c(empName, empAge)
cat("After concatenation of the new list\n")
print(empList)

# Adding Item to List
# To add an item to the end of list, we can use append() function.
my_numbers = c(1,5,6,3)
#adding number at the end of list
append(my_numbers, 45)
#printing list
my_numbers

thislist <- list("apple", "banana", "cherry")
append(thislist, "orange", after=2)

# Check if Item Exists
thislist <- list("apple", "banana", "cherry")
"apple" %in% thislist

# Deleting Components of a List
cat("Before deletion the list is\n")
print(empList)

# Deleting a top level components
cat("After Deleting Total staff components\n")
print(empList[-3])

# Deleting a inner level components
cat("After Deleting sandeep from name\n")
print(empList[[2]][-2])
empList[[2]][-2]
print(empList)


# Merging list
lst1 <- list(1,2,3)
lst2 <- list("hi","Hello")
new_list <- c(lst1,lst2)
print(class(new_list))

# Converting List to Vector
lst <- list(1:5)
print(lst)

vec <- unlist(lst)
class(vec)
print(vec)


# Converting list to matrix
# Defining list
lst1 <- list(list(1, 2, 3),
             list(4, 5, 6))

# Print list
cat("The list is:\n")
print(lst1)
cat("Class:", class(lst1), "\n")

# Convert list to matrix
mat <- matrix(unlist(lst1), nrow = 2, byrow = TRUE)

# Print matrix
cat("\nAfter conversion to matrix:\n")
print(mat)
cat("Class:", class(mat), "\n")



# Matrices:
# Matrices are two-dimensional, homogeneous data structures
# To create a matrix in R you need to use the function called matrix().
# By default, matrices are in column-wise order.

#Create matrix
A <- matrix(c(1:4), nrow=2, ncol=2, byrow = TRUE)
print(A)
class(A)
typeof(A)

rownames(A) <- c("A","B")
colnames(A) <- c("C","D")
print(A)

matrx <- matrix(c(5,3,4), nrow=3, ncol=3)
print(matrx)

# creating special matrices
# Matrix where all rows and columns are filled by a single constant 'k'
# Matrix having 3 rows and 3 columns
# filled by a single constant 5
print(matrix(5, 3, 3)) 

# diagonal matrix is a matrix in which the entries outside the main diagonal are all zero.
diag_matrx <- diag(c(5,3,3))
diag_matrx

# identity matrix in which all the elements of the principal diagonal are ones and all other elements are zeros.
id <- diag(1,3,3)
id


# matrix metrics
cat("Dimension of the matrix:\n")
print(dim(A))
cat("Number of rows:\n")
print(nrow(A))
cat("Number of columns:\n")
print(ncol(A))
cat("Number of elements:\n")
print(length(A))
# OR
print(prod(dim(A)))


A = matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
  nrow = 3,             
  ncol = 3,             
  byrow = TRUE          
)
# Accessing Elements of a R-Matrix
# Accessing rows
# Accessing first and second row
print(A[1:2,])

# The whole row can be accessed if you specify a comma after the number in the bracket:
A[2,]
# The whole column can be accessed if you specify a comma before the number in the bracket:
A[,2]

# Accessing columns
# Accessing first and second column
cat("Accessing first and second column\n")
print(A[, 1:2])

# accessing elemnts of matrix
# Accessing 2
print(A[1, 2])

# Accessing 6
print(A[2, 3])

# Accessing Submatrices
print(A[1:3,1:2])


# Modifying Elements of a Matrix
# Editing the 3rd rows and 3rd column element
# from 9 to 30
# by direct assignments
A[3, 3] = 30
cat("After edited the matrix\n")
print(A)

# Matrix Concatenation
# Note that you have to make sure the consistency of dimensions between the matrix before you do this matrix concatenation
# Concatenation of a row using rbind()
B = matrix(
  c(10, 11, 12),
  nrow = 1,
  ncol = 3
)
cat("The 1x3 matrix:\n")
print(B)

# Add a new row using rbind()
C = rbind(A, B)

cat("After concatenation of a row:\n")
print(C)

# Concatenation of a column using cbind()
# Add a new column using cbind()
B = matrix(
  c(10, 11, 12),
  nrow = 3,
  ncol = 1
)
A = cbind(A, B)

cat("After concatenation of a column:\n")
print(C)


# Adding Rows and Columns
# Adding rows
number <- matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
  nrow = 3,             
  ncol = 3,             
  byrow = TRUE          
)
cat("Before inserting a new row:\n")
print(number)

# New row to be inserted
new_row <- c(10, 11, 12)  # Define the new row

# Inserting the new row at the second position
number <- rbind(number[1, ], new_row, number[-1, ])

cat("\nAfter inserting a new row:\n")
print(number)


# Adding column
new_col <- c(10, 11, 12)
# Inserting the new column at the second position
number <- cbind(number[,1], new_col, number[,-1])
number

# Deleting Rows and Columns of a Matrix
# 2nd Row and 2nd and 3rd column deletion
number <- number[-2,-2:-3]
number

#  Loop Through a Matrix
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}



#Arrays
# Arrays are n-dimensional data structures
# Arrays are essential data storage structures defined by a fixed number of dimensions. 
# Arrays are used for the allocation of space at contiguous memory locations.

# Uni-dimensional arrays are called vectors with the length being their only dimension. 
# Two-dimensional arrays are called matrices, consisting of fixed numbers of rows and columns.
# syntax: array(data, dim = (nrow, ncol, nmat), dimnames=names)

# Uni-Dimensional Array
vec1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9) 
print (vec1) 
cat ("Length of vector : ", length(vec1)) 

# Multi-Dimensional Array
# arranges data from 2 to 13 
# in two matrices of dimensions 2x3 
arr = array(2:13, dim = c(2, 3, 2)) 
print(arr) 


# Vectors of different lengths can also be fed as input into the array() function. 
# However, the total number of elements in all the vectors combined should be equal to the number of elements in the matrices. 
# The elements are arranged in the order in which they are specified in the function.

vec1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9) 
vec2 <- c(10, 11, 12) 
# elements are combined into a single vector, 
# vec1 elements followed by vec2 elements. 
arr = array(c(vec1, vec2), dim = c(2, 3, 2)) 
print (arr) 


# Dimension of the Array
# for multi dimension array
arr = array(2:13, dim = c(2, 3, 2)) 
dim(arr)


# Naming of Arrays
row_names <- c("row1", "row2") 
col_names <- c("col1", "col2", "col3") 
mat_names <- c("Mat1", "Mat2") 

# the naming of the various elements 
# is specified in a list and 
# fed to the function 
arr = array(2:14, dim = c(2, 3, 2), 
            dimnames = list(row_names, 
                            col_names, mat_names)) 
print (arr) 


# Accessing arrays
# Accessing Uni-Dimensional Array
# The elements can be accessed by using indexes of the corresponding elements.
vec <- c(1:10) 
# accessing entire vector 
cat ("Vector is : ", vec) 
# accessing elements 
cat ("Third element of vector is : ", vec[3]) 

# Accessing entire matrices
# accessing matrix 1 by index value 
print ("Matrix 1") 
print (arr[,,1]) 

# accessing matrix 2 by its name 
print ("Matrix 2") 
print(arr[,,"Mat2"]) 


# Accessing specific rows and columns of matrices
# accessing matrix 1 by index value 
print ("1st column of matrix 1") 
print (arr[, 1, 1]) 

# accessing matrix 2 by its name 
print ("2nd row of matrix 2") 
print(arr["row2",,"Mat2"]) 

# Accessing elements individually
# accessing matrix 1 by index value 
print ("2nd row 3rd column matrix 1 element") 
print (arr[2, "col3", 1]) 

# accessing matrix 2 by its name 
print ("2nd row 1st column element of matrix 2") 
print(arr["row2", "col1", "Mat2"]) 


# Accessing subset of array elements
print(arr[,c(1,2),1])


# Adding elements to array
# creating a uni-dimensional array 
x <- c(1, 2, 3, 4, 5) 

# addition of element using c() function 
x <- c(x, 6) 
print ("Array after 1st modification ") 
print (x) 

# addition of element using append function 
x <- append(x, 7) 
print ("Array after 2nd modification ") 
print (x) 

# adding elements after computing the length 
len <- length(x) 
x[len + 1] <- 8
print ("Array after 3rd modification ") 
print (x) 

# adding on length + 3 index 
x[len + 3]<-9
print ("Array after 4th modification ") 
print (x) 

# append a vector of values to the array after length + 3 of array 
print ("Array after 5th modification") 
x <- append(x, c(10, 11, 12), after = length(x)+3) 
print (x) 

# adds new elements after 3rd index 
print ("Array after 6th modification") 
x <- append(x, c(-1, -1), after = 3) 
print (x)


# Removing Elements from Array
# Creating an array of length 9
m <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
print("Original Array")
print(m)

# Remove a single value element (3) from the array
m <- m[m != 3]
print("After 1st modification")
print(m)

# Removing elements based on a condition (greater than 2 and less than or equal to 8)
m <- m[m > 2 & m <= 8]
print("After 2nd modification")
print(m)

# Remove a sequence of elements using another array
remove <- c(4, 6, 8)

# Check which elements satisfy the remove property
print(m %in% remove)
print("After 3rd modification")
print(m[!m %in% remove])


# Updating Existing Elements of Array
# creating an array of length 9 
m <- c(1, 2, 3, 4, 5, 6, 7, 8, 9) 
print ("Original Array") 
print (m) 

# updating single element 
m[1] <- 0
print ("After 1st modification") 
print (m) 

# updating sequence of elements 
m[7:9] <- -1
print ("After 2nd modification") 
print (m) 

# updating two indices with two different values 
m[c(2, 5)] <- c(-1, -2) 
print ("After 3rd modification") 
print (m) 

# this add new element to the array 
m[10] <- 10
print ("After 4th modification") 
print (m)
