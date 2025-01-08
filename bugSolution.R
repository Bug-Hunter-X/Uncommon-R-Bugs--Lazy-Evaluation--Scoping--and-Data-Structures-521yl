```R
# Solutions and explanations for the unexpected behaviors

x <- 10
y <- 20

# Function with side effect - using local variables avoids modification of global x
my_function <- function(){
  x <- x + 1 # x is local to the function
  print(paste("x inside function:", x))
  y
}

z <- my_function()
print(paste("x outside function:", x))
print(paste("z:", z))

# Data frame subsetting - creating a copy avoids unintended modifications
data <- data.frame(a = 1:3, b = letters[1:3])

subsetted_data <- data[data$a > 1, ]
subsetted_data$c <- 4:5 #Adding a column
print(subsetted_data)
print(data)
#To modify the original data frame, you would have to reassign it
data <- subsetted_data

# Modifying parts of a data structure - creating a copy before modification
vector1 <- c(1, 2, 3)
vector2 <- vector1

#Creating a copy avoids modifying vector2
vector1 <- vector1 + 1

print(paste('vector1',vector1))
print(paste('vector2',vector2))
```