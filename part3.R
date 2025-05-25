
# Factors
# are data structures that are implemented to categorize the data 
# or represent categorical data and store it on multiple levels. 

# They can be stored as integers with a corresponding label to every unique integer.
# factor accepts only a restricted number of distinct values. 
# For example, a data field such as gender may contain values only from female, male, or transgender.
# In the above example, all the possible cases are known beforehand and are predefined. 
# These distinct values are known as levels. 
# After a factor is created it only consists of levels that are by default sorted alphabetically.


# Attributes of Factors in R Language
# x: It is the vector that needs to be converted into a factor.
# Levels: It is a set of distinct values which are given to the input vector x.
# Labels: It is a character vector corresponding to the number of labels.
# Exclude: This will mention all the values you want to exclude.
# Ordered: This logical attribute decides whether the levels are ordered.
# nmax: It will decide the upper limit for the maximum number of levels.


# Creating a Factor
# The command used to create or modify a factor in R language is – factor() with a vector as input. 
# The two steps to creating an R factor :  
  # Creating a vector
  # Converting the vector created into a factor using function factor()
# Creating a vector
x <-c("female", "male", "male", "female")
print(x)

# Converting the vector x into a factor 
# named gender
gender <-factor(x)
print(gender)

#Levels can also be predefined by the programmer.
# Creating a factor with levels defined by programmer
gender <- factor(c("female", "male", "male", "female"),
                 levels = c("female", "transgender", "male"));
gender

# Checking for a Factor
print(is.factor(gender))
class(gender)

# Accessing elements of a Factor
gender <- factor(c("female", "male", "male", "female"));
gender[3]
gender[c(2, 4)]

# Subtract one element at a time.
gender[-3]


# Modification of a Factor
gender[3] <- "male"
print(gender)

gender <- factor(c("female", "male", "male", "female"  ));
# add new level
levels(gender) <- c(levels(gender), "other")    
gender[3] <- "other"
gender

# Factor Length
length(gender)

# Factors in Data Frame 
# when we create a data frame, its column is categorical data, 
# and hence a R factor is automatically created on it in older version but in new version not.

age <- c(40, 49, 48, 40, 67, 52, 53)  
salary <- c(103200, 106200, 150200,
            10606, 10390, 14070, 10220)
gender <- c("male", "male", "transgender", 
            "female", "male", "female", "transgender")
employee<- data.frame(age, salary, gender, stringsAsFactors = TRUE)  
# employee <- data.frame(age, salary, gender = as.factor(gender))
print(employee)  
print(is.factor(employee$gender)) 




# Data Frames
#  used to store the tabular data
# two-dimensional, heterogeneous data structures
# Data frames have the following constraints placed upon them: 
#   
  # A data-frame must have column names and every row should have a unique name.
  # Each column must have the identical number of items.
  # Each item in a single column must be of the same data type.
  # Different columns may have different data types.

# Create Dataframe (use data.frame() function)
friend.data <- data.frame(
  friend_id = c(1:5), 
  friend_name = c("Sachin", "Sourav", 
                  "Dravid", "Sehwag", 
                  "Dhoni"),
  stringsAsFactors = FALSE
)
# print the data frame
print(friend.data)

# Get the Structure of the Data Frame
print(str(friend.data))


# Summary of Data in the R data frame
print(summary(friend.data))


# Extract/Access Data from Data Frame
# access any element from data frame by 
# using single $ ,brackets [ ] or double brackets [[]]  to access columns from a data frame
# Access Items using [] 
friend.data[1]

# Access Items using [[]]
friend.data[['friend_name']]

# Access Items using $
friend.data$friend_id

print(friend.data[2,])
print(friend.data[,2])


# Expanding data frame
friend.data$location <- c("Kolkata", "Delhi", 
                          "Bangalore", "Hyderabad",
                          "Chennai")
resultant <- friend.data
# print the modified data frame
print(resultant)


# find out the number of rows and clumns
dim(friend.data)

# Use the length() function to find the number of columns in a Data Frame (similar to ncol())

# Add Rows in Data Frame
Products <- data.frame(
  Product_ID = c(101, 102, 103),
  Product_Name = c("T-Shirt", "Jeans", "Shoes"),
  Price = c(15.99, 29.99, 49.99),
  Stock = c(50, 30, 25)
)

# Print the existing dataframe
cat("Existing dataframe (Products):\n")
print(Products)

# Adding a new row for a new product
New_Product <- c(104, "Sunglasses", 39.99, 40)
Products <- rbind(Products, New_Product)

# Print the updated dataframe after adding the new product
cat("\nUpdated dataframe after adding a new product:\n")
print(Products)


# Add Columns in Data Frame
# Adding a new column for 'Discount' to the dataframe
Discount <- c(5, 10, 8, 6)  # New column values for discount
Products <- cbind(Products, Discount)

# Rename the added column
colnames(Products)[ncol(Products)] <- "Discount"  # Renaming the last column

# Print the updated dataframe after adding the new column
cat("\nUpdated dataframe after adding a new column 'Discount':\n")
print(Products)


# Remove Rows and Columns 
# Remove row
# Create a data frame
data <- data.frame(
  friend_id = c(1, 2, 3, 4, 5),
  friend_name = c("Sachin", "Sourav", "Dravid", "Sehwag", "Dhoni"),
  location = c("Kolkata", "Delhi", "Bangalore", "Hyderabad", "Chennai")
)

data

# Remove a row with friend_id = 3
data <- subset(data, friend_id != 3)

data

data <- data[-4,]
print(data)

# Remove the 'location' column
data <- select(data, -location)
data 


# Combining Data Frames
# vertically combine
# Combining the dataframes using rbind()
# combined_df <- rbind(df1, df2)
# horizontally combine
# Combining the dataframes using cbind()
# combined_df <- cbind(df1, df2)




# Input/Output
# Taking Input from User
  # Using readline() method
  # Using scan() method

# readline() method takes input in string format. 
# If one inputs an integer then it is inputted as a string, lets say, one wants to input 255, then it will input as "255", like a string. 
# So one needs to convert that inputted value to the format that he needs. 
# In this case, string "255" is converted to integer 255. To convert the inputted value to the desired data type, there are some functions in R, 
  # as.integer(n); ---> convert to integer
  # as.numeric(n); ---> convert to numeric type (float, double etc)
  # as.complex(n); ---> convert to complex number (i.e 3+2i)
  # as.Date(n) ---> convert to date ..., etc

var = readline()

# convert the inputted value to integer
var = as.integer(var)

# print the value
print(var)

# taking input with showing the message
var = readline(prompt = "Enter your name : ");

# print the value
print(var)


# taking multiple inputs
# using braces 
{
  var1 = readline("Enter 1st number : ");
  var2 = readline("Enter 2nd number : ");
  var3 = readline("Enter 3rd number : ");
  var4 = readline("Enter 4th number : ");
}

# converting each value
var1 = as.integer(var1);
var2 = as.integer(var2);
var3 = as.integer(var3);
var4 = as.integer(var4);

# print the sum of the 4 number
print(var1 + var2 + var3 + var4)


# string input
var1 = readline(prompt = "Enter your name : "); 
# character input
var2 = readline(prompt = "Enter any character : ");
# convert to character
var2 = as.character(var2)
# printing values
print(var1)
print(var2)


# Using scan() method
# This method takes input from the console. 
# This method is a very handy method while inputs are needed to taken quickly for any mathematical calculation or for any dataset. 
# This method reads data in the form of a vector or list. 
# This method also uses to reads input from a file also. 

# Syntax: 
#   x = scan()
# scan() method is taking input continuously, 
# to terminate the input process, need to press Enter key 2 times on the console.

x = scan()
# print the inputted values
print(x)
class(x)


# Taking double, string, character type values using scan() method
# To do this there is an argument called what, 
# by which one can specify the data type of the inputted value.

# Syntax: 
# x = scan(what = double()) ----for double 
# x = scan(what = " ") ----for string 
# x = scan(what = character()) ----for character 

# double input using scan()
d = scan(what = double())

# string input using 'scan()'
s = scan(what = " ")

# character input using 'scan()'
c = scan(what = character())

# print the inputted values
print(d) # double
print(s) # string
print(c) # character


# # Read File data using scan() method
# Save the data file in the same location where the program is saved for better access. 
# Otherwise total path of the file need to defined inside the scan() method.
# string file input using scan()
s = scan("fileString.txt", what = " ")

# double file input using scan()
d = scan("fileDouble.txt", what = double())

# character file input using scan()
c = scan("fileChar.txt", what = character())

# print the inputted values
print(s) # string
print(d) # double
print(c) # character


# Printing Output of an R Program
# direct variable name
x <- "HI"
x 

# print()
print(x)
print("Hello")

# paste()
# using paste inside print()
print(paste(x, "is best (paste inside print())")) 
# using paste0 inside print()
print(paste0(x, "is best (paste0 inside print())")) 
# paste0()

# sprintf()
x1 = 255            # integer
x2 = 23.14          # float 
# string print
sprintf("%s is best", x)
# integer print
sprintf("%d is integer", x1)
# float print
sprintf("%f is float", x2)

# message()
message(x, "is best") 
# print normal string
message("This is R language")

cat()
cat(x, "is best\n") 
# print normal string
cat("This is R language")


# Syntax: print(x, digits, na.print)
# Parameters:
#   x: specified argument to be displayed
# digits: defines minimal number of significant digits
# na.print: indicates NA values output format

