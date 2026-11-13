# Assignment 1: ds321
# Star dataset descriptive statistics

# Read the original dataset
stars <- read.csv("6 class csv.csv", check.names = FALSE)

first5 <- data.frame(
  Temp = stars[["Temperature (K)"]],
  Lum = stars[["Luminosity(L/Lo)"]],
  Radius = stars[["Radius(R/Ro)"]],
  AbsMag = stars[["Absolute magnitude(Mv)"]],
  Type = stars[["Star type"]]
)

head(first5, 5)

summary(stars)
# Check for missing values
colSums(is.na(stars))


# Number of records
nrow(stars)

# Number of columns
ncol(stars)

# Numerical summaries
summary(stars)

# Average temperature
mean(stars[["Temperature (K)"]], na.rm = TRUE)

# Median temperature
median(stars[["Temperature (K)"]], na.rm = TRUE)

# Lowest and highest temperature
min(stars[["Temperature (K)"]], na.rm = TRUE)
max(stars[["Temperature (K)"]], na.rm = TRUE)

# Count each recorded star type
table(stars[["Star type"]])

# Count each recorded star colour
table(stars[["Star color"]])


# Count stars in 5,000 K temperature intervals
temperature_counts <- cut(
  stars[["Temperature (K)"]],
  breaks = seq(0, 40000, by = 5000),
  include.lowest = TRUE,
  right = TRUE
)

table(temperature_counts)
# Histogram of star temperatures
hist(stars[["Temperature (K)"]],
     breaks = seq(0, 40000, by = 5000),
     main = "Distribution of Star Temperatures",
     xlab = "Temperature (K)",
     ylab = "Number of Stars",
     col = "lightblue",
     include.lowest = TRUE)

