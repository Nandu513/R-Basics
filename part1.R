
#R basics

#-Basics, Buitl-in methods,
# R string
#-operators
#-Varibale, define, rules, scope
#-Data types, verification, coercion



#Simple Math

5+5

4-3

#Built-in Math Functions
max(5, 10, 15)
min(5, 10, 15)

sqrt(16)
abs(-4.7)  #function returns the absolute (positive) value of a number

# The ceiling() function rounds a number upwards to its nearest integer, and 
# the floor() function rounds a number downwards to its nearest integer, and returns the result
ceiling(1.4)
floor(1.4)


for (x in (1:5)){
  print(x)
}


# Strings:
# Strings are a bunch of character variables. 
# It is a one-dimensional array of characters. 
# One or more characters enclosed in a pair of matching single or double quotes can be considered a string in R.

# A double-quoted string can contain single quotes within it. 
# Single-quoted strings can't contain single quotes. 
# Similarly, double quotes can't be surrounded by double quotes.
# creating a string with double quotes
str1 <- "OK1"
cat ("String 1 is : ", str1)
# creating a string with single quotes
str2 <- 'OK2'
cat ("String 2 is : ", str2)
str3 <- "This is 'acceptable and 'allowed' in R"
cat ("String 3 is : ", str3)
str4 <- 'Hi, Wondering "if this "works"'
cat ("String 4 is : ", str4)
# str5 <- 'hi, ' this is not allowed'
# cat ("String 5 is : ", str5)


# String Literals
#Assign a String to a Variable
x <- "Hello "
x


#Multiline Strings
x <- "Hello,
World,
R"
x

# R will add a "\n" at the end of each line break. This is called an escape character, and the n character indicates a new line.
# If you want the line breaks to be inserted at the same position as in the code, use the cat() function
cat(x)

#String Length
# Calculating length of string    
nchar(x)
str_length("hello")


# Check a String
# Use the grepl() function to check if a character or a sequence of characters are present in a string
grepl("Orld", ignore.case = TRUE, x)


#Accessing portions of an R string
# Accessing characters
# using substr() function
substr("Learn Code Tech", 1, 5)

str <- "Hello"
len <- nchar(str)
# substring() function
print (substring(str, len, len))
# Accessing elements out of index
print (substring(str, len+1, len+1))
print(substr(str, len-2, len))

# Case Conversion:
str <- "Hi LeArn CodiNG"
print(toupper(str))
print(tolower(str))
print(casefold(str, upper = TRUE)) # defualt  upper = FALSE

# Concatenation of R Strings
# Create two strings
string1 <- "Hello"
string2 <- "World"

# Concatenate the two strings
result <- paste(string1, string2)

# Print the result
print(result)


# R String formatting
x <- 42
y <- 3.14159

# Format a string with the two variable values
result <- sprintf("The answer is %d, and pi is %.2f.", x, y)

# Print the result
print(result)


# Updating R strings
#replacing
x <- "Data Science"
substring(x, 6, 12) <- "stored"
print(x)

#updating
x <- c("apple", "banana", "cherry")
substr(x, 1, 1) <- "X"
print(x)  # Output: "Xpple" "Xanana" "Xherry"

# extending will not happen beyond the inital string length

# Create a string
string <- "Hello, World!"
# Replace "World" with "Universe"
string <- gsub("World", "Universe", string)
# Print the updated string
print(string)


# Escape Characters
# To insert characters that are illegal in a string, you must use an escape character.
# An escape character is a backslash \ followed by the character you want to insert.
# An example of an illegal character is a double quote inside a string that is surrounded by double quotes
# str <- "We are the so-called "Vikings", from the north."
# str  #Error: unexpected symbol in "str <- "We are the so-called "Vikings"

str <- "We are the so-called \"Vikings\", from the north."
str
cat(str)




#operators
#Operators are the symbols directing the compiler to perform various kinds of operations between the operands.
#Arithmetic Operators:

#Addition operator (+)
a <- c (1,2)
b <- c (2,3)
print(a+b)

#Subtraction Operator (-)
a <- c (1,2)
b <- c (2,3)
print(a-b)

#Multiplication Operator (*) 
a <- c(2,3)
b <- c(3,6)
print(a*b)

#Division Operator (/) 
a <- 3
b <- 4
print(a/b)

#Power Operator (^)
print(a^b)

#Modulo Operator (%%)
print(a%%b)

vec1 <- c(0, 2)
vec2 <- c(2, 3)

# Performing operations on Operands
cat ("Addition of vectors :", vec1 + vec2, "\n")
cat ("Subtraction of vectors :", vec1 - vec2, "\n")
cat ("Multiplication of vectors :", vec1 * vec2, "\n")
cat ("Division of vectors :", vec1 / vec2, "\n")
cat ("Modulo of vectors :", vec1 %% vec2, "\n")
cat ("Power operator :", vec1 ^ vec2)

print(vec2[1]/vec1[1])


#Logical Operators:
#Element-wise Logical AND operator (&)
#Returns True if both the operands are True.
a <- c(TRUE, 0.1)
b <- c(0,4+3i)
print(a & b)

#Element-wise Logical OR operator (|)
#Returns True if either of the operands is True.
print(a|b)

#NOT operator (!)
#A unary operator that negates the status of the elements of the operand.
a <- c(0,FALSE)
print(!a)


#Logical AND operator (&&)
#Returns True if both the first elements of the operands are True.
a <- TRUE
b <- 0
print(a&&b)

#Logical OR operator (||)
#Returns True if either of the first elements of the operands is True.
print(a||b)

vec1 <- c(0,2)
vec2 <- c(TRUE,FALSE)

# Performing operations on Operands
cat ("Element wise AND :", vec1 & vec2, "\n")
cat ("Element wise OR :", vec1 | vec2, "\n")
cat ("Logical AND :", vec1[1] && vec2[1], "\n")
cat ("Logical OR :", vec1[1] || vec2[1], "\n")
cat ("Negation :", !vec1)


#Relational Operators:

# Greater than (>)
# Returns TRUE if the corresponding element of the first operand is greater than that of the second operand. 
# Else returns FALSE.
print(a<b)

#Less than equal to (<=)
print(b<=a)

#Greater than (>)
print(a>b)

#Greater than equal to (>=)
print(a>=b)

#Not equal to (!=) 
print(3!=3.0)

vec1 <- c(0, 2)
vec2 <- c(2, 3)

# Performing operations on Operands
cat ("Vector1 less than Vector2 :", vec1 < vec2, "\n")
cat ("Vector1 less than equal to Vector2 :", vec1 <= vec2, "\n")
cat ("Vector1 greater than Vector2 :", vec1 > vec2, "\n")
cat ("Vector1 greater than equal to Vector2 :", vec1 >= vec2, "\n")
cat ("Vector1 not equal to Vector2 :", vec1 != vec2, "\n")


#Assignment Operators:
#Assignment Operators in R are used to assigning values to various data objects in R. 
#The objects may be integers, vectors, or functions

#Left Assignment (<- or <<- or =)
a <<- 4
print(a)

#Right Assignment (-> or ->>)
5 ->> b
print(b)


#Miscellaneous Operators

#%in% Operator 
#Checks if an element belongs to a list and returns a boolean value TRUE if the value is present  else FALSE.
val <- 0.1
a <- c(TRUE, 0.11,"apple")
print (val %in% a)

#%*% Operator
#This operator is used to multiply a matrix with its transpose. 
#Transpose of the matrix is obtained by interchanging the rows to columns and columns to rows. 
#The number of columns of the first matrix must be equal to the number of rows of the second matrix. 
#Multiplication of the matrix A with its transpose, B, produces a square matrix. 
mat <- matrix (1:6, nrow = 2, ncol = 3, byrow=TRUE)
print("Matrix elements using : ")
print(mat)

# help(matrix)

product = mat %*% t(mat)
print("Product of matrices")
print(product,)
cat ("does 1 exist in prod matrix :", "1" %in% product)

# the integer divison (%/%) rounds the result down to the nearest whole number




#Variables are containers for storing data values
#R does not have a command for declaring a variable. 
#A variable is created the moment you first assign a value to it. 
#To assign a value to a variable, use the <- sign.

# Initialization of variables
# using equal to operator
var1 = "hello"
print(var1)

# using leftward operator
var2 <- "hello"
print(var2)

# using rightward operator
"hello" -> var3
print(var3)

#The following rules need to be kept in mind while naming a R variable: 
# A valid variable name consists of a combination of alphabets, numbers, dot(.), and underscore(_) characters. Example: var.1_ is valid
# Apart from the dot and underscore operators, no other special character is allowed. Example: var$1 or var#1 both are invalid
# Variables can start with alphabets or dot characters. Example: .var or var is valid
# The variable should not start with numbers or underscore. Example: 2var or _var is invalid.
# If a variable starts with a dot the next thing after the dot cannot be a number. Example: .3var is invalid
# The variable name should not be a reserved keyword in R. Example: TRUE, FALSE,etc.

#Important Methods for R Variables 
# 1. class() function 
# This built-in function is used to determine the data type of the variable provided to it.
var1 <- "Hi"
class(var1)
var2=3.5
class(var2)

# 2. ls() function 
# This built-in function is used to know all the present variables in the workspace.
# This is generally helpful when dealing with a large number of variables at once and helps prevents overwriting any of them.
ls()

# 3. rm() function 
# This is again a built-in function used to delete an unwanted variable within your workspace.
# This helps clear the memory space allocated to certain variables that are not in use thereby creating more space for others. 
# The name of the variable to be deleted is passed as an argument to it.
rm(mat)
ls()

# Concatenate Elements:
# You can also concatenate, or join, two or more elements, by using the paste() function.
# To combine both text and a variable, R uses comma (,):
paste("HEllo ","World")
paste("Hello",4)


# Multiple Variables
# R allows you to assign the same value to multiple variables in one line:
a <- b <- 5
print(a+b)


#Scope of Variables in R programming
# The location where we can find a variable and also access it if required is called the scope of a variable. 
#There are mainly two types of variable scopes:

# 1. Global Variables:
# Global variables are those variables that exist throughout the execution of a program. 
# It can be changed and accessed from any part of the program.
# They are declared anywhere in the program outside all of the functions or blocks.
# usage of global variables
# global variable
global = 5

# global variable accessed from
# within a function
display = function(){
  # global=15 #local
  print(global)
}
display()

# changing value of global variable
global = 10
print(global)
display()

# 2. Local Variables
# Local variables are those variables that exist only within a certain part of a program like a function and are released when the function call ends. 
# Local variables do not exist outside the block in which they are declared, i.e. they can not be accessed or used outside that block.
func = function(){
  # this variable is local to the
  # function func() and cannot be
  # accessed outside this function
  age = 18    
  print(age)
}

cat("Age is:\n")
func()

#Global variables are kept in memory throughout program execution, 
# they can eat up more memory than local variables. Local variables, 
# on the other hand, are created and destroyed only when necessary, 
# therefore they normally use less memory.




#R Data Types
#R Data types are used to specify the kind of data that can be stored in a variable
#Variables are not needed to be declare with a data type in R, data type even can be changed.
#Each variable in R has an associated data type. 
#Each R-Data Type requires different amounts of memory and has some specific operations which can be performed over it.


# Data Types in R are:
#   
# numeric - (3,6.7,121)
# Integer - (2L, 42L; where 'L' declares this as an integer)
# logical - ('True')
# complex - (7 + 5i; where 'i' is imaginary number)
# character - ("a", "B", "c is third", "69")
# raw - ( as.raw(55); raw creates a raw vector of the specified length)

# Numeric:
x = 5.6
# print the class name of variable
print(class(x))
# print the type of variable
print(typeof(x))

y = 5
# print the class name of variable
print(class(y))
# print the type of variable
print(typeof(y))
# is y an integer?
print(is.integer(y))



# Integer
x = as.integer(5)
# print the class name of x
print(class(x))
# print the type of x
print(typeof(x))

# Declare an integer by appending an L suffix.
y = 5L
# print the class name of y
print(class(y))
# print the type of y
print(typeof(y))



# Logical
x = 4
y = 3

# Comparing two values
z = x > y
# print the logical value
print(z)
# print the class name of z
print(class(z))
# print the type of z
print(typeof(z))



# Complex
x = 4 + 3i
# print the class name of x
print(class(x))
# print the type of x
print(typeof(x))



# Character
char = "Hello"
# print the class name of char
print(class(char))
# print the type of char
print(typeof(char))


# Type verification
# Logical
print(is.logical(TRUE))

# Integer
print(is.integer(3L))

# Numeric
print(is.numeric(10.5))

# Complex
print(is.complex(1+2i))

# Character
print(is.character("12-04-2020"))

print(is.integer("a"))

print(is.numeric(2+3i))



# coercion or data type conversion
# Logical
print(as.numeric(TRUE))

# Integer
print(as.complex(3L))

# Numeric
print(as.logical(10.5))

# Complex
print(as.character(1+2i))

# Can't possible
# print(as.numeric("12-04-2020"))
