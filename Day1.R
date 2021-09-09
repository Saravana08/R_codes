
# INTRODUCTION TO R LANGUAGE


# basic R codes

2+3 
6/3 
(3*8)/(2*3) 
log2(32)
sqrt(2)
seq(0, 5, length=6)





# installing a package

install.packages("dplR")

library(dplyr)

update.packages()

getcwd()
setcwd()

?plot

??plot






#Data Types
v <- 23.5
print(class(v))

v <- TRUE 
print(class(v))

v <- 2L
print(class(v))

v <- 2+5i
print(class(v))

v <- "hey"
print(class(v))

v <- charToRaw("Hello")
print(class(v))


# Data Structures
#1-D	atomic vector
#2-D	matrix




Vectors
apple <- c('red','green',"yellow")
print(apple)






Lists
list1 <- list(c(2,5,3),21.3,sin)
print(list1)





Matrices
M = matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)





Arrays
a <- array(c('green','yellow'),dim = c(3,3,2))
print(a)





Factors
# Create a vector.
apple_colors <- c('green','green','yellow','red','red','red','green')

# Create a factor object.
factor_apple <- factor(apple_colors)

# Print the factor.
print(factor_apple)
print(nlevels(factor_apple))




Data_Frames

# Create a vector.
BMI <- 	data.frame(
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  Age = c(42,38,26)
)
print(BMI)







#dataframes
dat <- data.frame(id = letters[1:10], x = 1:10, y = 11:20)
dat

class(dat)

dat[1, 3]

dat[["y"]]
dat$y




# Assignment using equal operator. 
var.1 = c(0,1,2,3) 
# Assignment using leftward operator. 
var.2 <- c("learn","R") 
# Assignment using rightward operator.
c(TRUE,1) -> var.3 
print(var.1) 
print(var.2) 
print(var.3) 




#Operators

#Arithmatic Operator

# + : Adds two vectors
v <- c( 2,5.5,6) 
t <- c(8, 3, 4) 
print(v+t)


# ??? : Subtracts second vector from the first
v <- c( 2,5.5,6) 
t <- c(8, 3, 4) 
print(v-t)


#* : Multiplies both vectors
v <- c( 2,5.5,6) 
t <- c(8, 3, 4) 
print(v*t)

#/ : Divide the first vector with the second
v <- c( 2,5.5,6) 
t <- c(8, 3, 4) 
print(v/t)


# %% : Give the remainder of the first vector with the second
v <- c( 2,5.5,6) 
t <- c(8, 3, 4) 
print(v%%t)


#%/% : The result of division of first vector with second (quotient)
v <- c( 2,5.5,6) 
t <- c(8, 3, 4) 
print(v%/%t)


#^ : The first vector raised to the exponent of second vector
v <- c( 2,5.5,6) 
t <- c(8, 3, 4) 
print(v^t)






#Relational Operators

#Checks if each element of the first vector is greater than the corresponding element of the second vector.
v <- c(2,5.5,6,9) 
t <- c(8,2.5,14,9) 
print(v>t)





# < : Checks if each element of the first vector is less than the corresponding element of the second vector.
v <- c(2,5.5,6,9) 
t <- c(8,2.5,14,9) 
print(v < t)


#== : Checks if each element of the first vector is equal to the corresponding element of the second vector.
v <- c(2,5.5,6,9) 
t <- c(8,2.5,14,9) 
print(v == t)





#<= : Checks if each element of the first vector is less than or equal to the corresponding element of the second vector.
v <- c(2,5.5,6,9) 
t <- c(8,2.5,14,9) 
print(v<=t)


#>= : Checks if each element of the first vector is greater than or equal to the corresponding element of the second vector.
v <- c(2,5.5,6,9) 
t <- c(8,2.5,14,9) 
print(v>=t)



#!= : Checks if each element of the first vector is unequal to the corresponding element of the second vector.
v <- c(2,5.5,6,9) 
t <- c(8,2.5,14,9) 
print(v!=t)



# Logical Operators

v <- c(3,1,TRUE,2+3i) 
t <- c(4,1,FALSE,2+3i) 
print(v&t)


#| It is called Element-wise Logical OR operator. It combines each element of the first vector with the corresponding element of the second vector and gives a output TRUE if one the elements is TRUE.
v <- c(3,0,TRUE,2+2i) 
t <- c(4,0,FALSE,2+3i) 
print(v|t)

#! : It is called Logical NOT operator. Takes each element of the vector and gives the opposite logical value.
v <- c(3,0,TRUE,2+2i) 
print(!v)



# Assignment Operators


#These operators are used to assign values to vectors.
#<??? or = or <<??? is Called Left Assignment
v1 <- c(3,1,TRUE,2+3i) 
v2 <<- c(3,1,TRUE,2+3i) 
v3 = c(3,1,TRUE,2+3i) 
print(v1) print(v2) print(v3)

#-> or ->> is Called Right Assignment
c(3,1,TRUE,2+3i) -> v1 
c(3,1,TRUE,2+3i) ->> v2 
print(v1) print(v2)



# Miscellaneous Operators

#These operators are used to for specific purpose and not general mathematical or logical computation.
#: Colon operator. It creates the series of numbers in sequence for a vector.
v <- 2:8 
print(v) 



# Generating a sequence

seq(0, 1, length=11)
seq(rnorm(20))
seq(1, 9, by = 2) # match
seq(1, 9, by = pi)# stay below
seq(1, 6, by = 3)
seq(1.575, 5.125, by=0.05)
seq(17) # same as 1:17






# In built datasets

data()


#head() - shows first 6 rows
#tail() - shows last 6 rows
#dim() - returns the dimensions of data frame (i.e. number of rows and number of columns)
#nrow() - number of rows
#ncol() - number of columns
#str() - structure of data frame - name, type and preview of data in each column
#names() or colnames() - both show the names attribute for a data frame
#sapply(dataframe, class) - shows the class of each column in the data frame



# INput from user
my.name <- readline(prompt="Enter name: ")
my.age <- readline(prompt="Enter age: ") 

# convert character into integer 
my.age <- as.integer(my.age) 

print(paste("Hi,", my.name, ",next year you will be", my.age+1, "years old."))




# Convert the class of a variable

Execute the following commands:
rm(list=ls())
a=c(1,2,3,4,5)
b=as.factor(a)
class(b)
c=as.numeric(b)
class(c)
d=as.complex(a)
class(d)
list1=list(c(1,2,3),c(3,6,8),c(3,5,6))
k=as.matrix(list1)


