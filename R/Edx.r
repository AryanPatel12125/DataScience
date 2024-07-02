# Install the DSLABS package from CRAN (if not already installed)
if (!requireNamespace("dslabs", quietly = TRUE)) {
  install.packages("dslabs")
}

# Load the DSLABS package
library(dslabs)

data = library(dslabs)

data(heights)
heights

num_rows <- nrow(heights)

# Print the number of rows
print(num_rows)


# Assuming your dataset is named "heights"
height_row_777 <- heights$height[777]

# Print the height in the row 777
print(height_row_777)


max_height <- max(heights$height)
min_height <- min(heights$height)

# Print the maximum and minimum heights
print(paste("Maximum Height:", max_height, "inches"))
print(paste("Minimum Height:", min_height, "inches"))


min_height_row <- which.min(heights$height)

# Print the row with the minimum height
print(paste("Row with Minimum Height:", min_height_row))

# BREAK
mean_height <- mean(heights$height)
median_height <- median(heights$height)

# Print the mean and median heights
print(paste("Mean Height:", mean_height, "inches"))
print(paste("Median Height:", median_height, "inches"))


proportion_male <- mean(heights$sex == "Male")

# Print the proportion of individuals that are male
print(paste("Proportion of Males:", proportion_male))


# Assuming your dataset is named "heights"
taller_than_78 <- sum(heights$height > 78)

# Print the number of individuals taller than 78 inches
print(paste("Number of Individuals Taller than 78 inches:", taller_than_78))

# Assuming your dataset is named "heights"
taller_than_78_female <- sum(heights$height > 78 & heights$sex == "Female")

# Print the number of females taller than 78 inches
print(paste("Number of Females Taller than 78 inches:", taller_than_78_female))

