# Using the Libraries

# Formating the data

# Total number of digits displayed. Last digit rounded off.
result <- format(23.123456789, digits = 9)
print(result)

# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)

# Format treats everything as a string.
result <- format(6)
print(result)

# Numbers are padded with blank in the beginning for width.
result <- format(13.7, width = 6)
print(result)

# Left justify strings.
result <- format("Hello", width = 8, justify = "l")
print(result)

# Justfy string with center.
result <- format("Hello", width = 8, justify = "c")
print(result)






#The different parts of a function are ???

#Function Name ??? This is the actual name of the function. It is stored in R environment as an object with this name.

#Arguments ??? An argument is a placeholder. When a function is invoked, you pass a value to the argument. Arguments are optional; that is, a function may contain no arguments. Also arguments can have default values.

#Function Body ??? The function body contains a collection of statements that defines what the function does.

#Return Value ??? The return value of a function is the last expression in the function body to be evaluated.


# Built-in Function

print(seq(32,44))

print(mean(25:82))

print(sum(41:68))

print(abs(-34))

print(sqrt(4))

print(ceiling(5.7))

print(floor(5.7))

print(trunc(c(1.2,2.5,8.1)))

print(cos(4))

print(sin(4))

print(tan(4))

print(log(4))

print(log10(4))

print(exp(4))


# User-defined Function


func1 <- function(a) {
  for(i in 1:a) {
    b <- i^2
    print(b)
  }
}	

func1(6)


func2 <- function(a,b,c) {
  result <- a * b + c
  print(result)
}

# Call the function by position of arguments.
func2(5,3,11)



multiply <- function(a = 3, b = 6) {
  result <- a * b
  print(result)
}

# Call the function without giving any argument.
multiply()




# Normalise the Dataset


df <- data.frame(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)


df$a <- (df$a - min(df$a, na.rm = TRUE)) / 
  (max(df$a, na.rm = TRUE) - min(df$a, na.rm = TRUE))
df$b <- (df$b - min(df$b, na.rm = TRUE)) / 
  (max(df$b, na.rm = TRUE) - min(df$a, na.rm = TRUE))
df$c <- (df$c - min(df$c, na.rm = TRUE)) / 
  (max(df$c, na.rm = TRUE) - min(df$c, na.rm = TRUE))
df$d <- (df$d - min(df$d, na.rm = TRUE)) / 
  (max(df$d, na.rm = TRUE) - min(df$d, na.rm = TRUE))



rescale01 <- function(x) {
  rng <- range(x, na.rm = TRUE)
  (x - rng[1]) / (rng[2] - rng[1])
}

rescale01(c(5,1,3))

df$a <- rescale01(df$a)
df$b <- rescale01(df$b)
df$c <- rescale01(df$c)
df$d <- rescale01(df$d)



# Good
if (y < 0 && debug) {
  message("Y is negative")
}

if (y == 0) {
  log(x)
} else {
  y ^ x
}


# Bad
if (y < 0 && debug)
  message("Y is negative")

if (y == 0) {
  log(x)
} 
else {
  y ^ x
}


# Dropping the curly braces


y <- 10

if (y < 20) {
  x <- "Too low" 
} else {
  x <- "Too high"
}

x <- if (y < 20) "Too low" else "Too high"


temp=25
if (temp <= 0) {
  "freezing"
} else if (temp <= 10) {
  "cold"
} else if (temp <= 20) {
  "cool"
} else if (temp <= 30) {
  "warm"
} else {
  "hot"
}

# Good
mean(1:10, na.rm = TRUE)

# Bad
mean(x = 1:10, , FALSE)
mean(, TRUE, x = c(1:10, NA))



# Good
feet=6
inches=1
average <- mean(feet / 12 + inches, na.rm = TRUE)

# Bad
average<-mean(feet/12+inches,na.rm=TRUE)




# Find missing records in Data

show_missings <- function(df) {
  n <- sum(is.na(df))
  cat("Missing values: ", n, "\n", sep = "")
  
  invisible(df)
}

x <- show_missings(mtcars) 
class(x)
dim(x)


