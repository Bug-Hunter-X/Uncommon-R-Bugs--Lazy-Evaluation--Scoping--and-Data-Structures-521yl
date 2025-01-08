```R
# Example of unexpected behavior due to R's lazy evaluation

x <- 10
y <- 20

# Function with side effect
my_function <- function(){
  x <<- x + 1 # Modifies the global x
  print(paste("x inside function:", x))
  y
}

z <- my_function()
print(paste("x outside function:", x))
print(paste("z:", z))

# Another example with data frames
data <- data.frame(a = 1:3, b = letters[1:3])

# Subsetting - unexpected results if you're not careful
subsetted_data <- data[data$a > 1, ]
subsetted_data$c <- 4:5 #Adding a column
print(subsetted_data)
print(data)

# Unexpected behaviour when modifying parts of a data structure
# in a loop
vector1 <- c(1, 2, 3)
vector2 <- vector1

for(i in 1:length(vector1)){
  vector1[i] <- vector1[i] + 1
}

print(paste('vector1',vector1))
print(paste('vector2',vector2))
```