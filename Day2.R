install.packages("reshape")
install.packages("vegan")

library(reshape)
library(vegan)

#ggplot - visualisations

# Sample dataset of 1000 rows
interim_object <- data.frame(rep(1:100, 10),
                             rep(101:200, 10),
                             rep(201:300, 10))

object.size(interim_object) # Reports the memory size allocated to the object

rm("interim_object") # Removes only the object itself and not necessarily the memory allotted to it

gc() # Force R to release memory it is no longer using

ls() # Lists all the objects in your current workspace

rm(list = ls()) # If you want to delete all the objects in the workspace and start with a clean slate



install.packages("Dataquest")

# If Else loop

team_A <- 3 # Number of goals scored by Team A
team_B <- 5 # Number of goals scored by Team B

if (team_A > team_B){
  print ("Team A wins")
}



team_A <- 4 # Number of goals scored by Team A
team_B <- 3 # Number of goals scored by Team B

if (team_A > team_B){
  print ("Team A will make the playoffs")
} else {
  print ("Team B will make the playoffs")
}



matches <- list(c(2,1),c(5,2),c(6,3))

for (match in matches){
  sum(match)
  print(match)
  print(sum(match))
}



matches <- list(c(2,4),c(5,2),c(6,8))

for (match in matches){
  if (match[1] > match[2]){
    print("Win")
  } else {
    print ("Lose")
  }
}

#find 5 people between 55 to 60 out of 1000 ages


# Break - whenever stop the loops
matches <- list(c(2,1),c(5,2),c(6,3))


for (match in matches){
  if (match[1] > match[2]){
    print("Win")
    break
  } else {
    print("Lose")
  }
}



for (i in seq(10)){
  if (i<6){
    print(i)
  }}



wins <- 0
while (wins < 10){
  print ("Does not make playoffs")
  wins <- wins + 1
}




# Functions

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


x <- df$a
(x - min(x, na.rm = TRUE)) / (max(x, na.rm = TRUE) - min(x, na.rm = TRUE))


rng <- range(x, na.rm = TRUE)
(x - rng[1]) / (rng[2] - rng[1])


temp=4
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








# Exercises

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
} else {
  y ^ x
}



# Good
mean(1:10, na.rm = TRUE)

# Bad
mean(x = 1:10, , FALSE)
mean(, TRUE, x = c(1:10, NA))



# Good
average <- mean(feet / 12 + inches, na.rm = TRUE)

# Bad
average<-mean(feet/12+inches,na.rm=TRUE)


show_missings <- function(df) {
  n <- sum(is.na(df))
  cat("Missing values: ", n, "\n", sep = "")
  
  invisible(df)
}


x <- show_missings(mtcars) 
class(x)
dim(x)

#cat is useful for producing output in user-defined functions. 
#It converts its arguments to character vectors, concatenates them to a single character 
#vector, appends the given sep = string(s) to each element and then outputs them




#Scatter Plot
#Histogram
#Bar & Stack Bar Chart
#Box Plot
#Area Chart
#Heat Map
#Correlogram



input <- mtcars[,c('wt','mpg')]
print(head(input))

plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)



hist(input$wt,xlab = "Weight",col = "yellow",border = "blue")


plot(input$wt,type = "o") # line graph


boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")

barplot(input$wt)


x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")
pie(x,labels)


