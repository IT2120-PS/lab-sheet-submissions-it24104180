#labsheet 5
setwd("C:\\Users\\it24104180\\Pictures\\it24104180")
getwd()
# Import dataset
delivery_data <- read.table("Lab 05.txt", header = TRUE)

breaks <- seq(20, 70, length.out = 10)  # 9 intervals = 10 break points
hist(delivery_data$Delivery_Time,
     breaks = breaks,
     right = FALSE,
     col = "blue",
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency")
#Mostly 30–50 mins, some over 60; moderately right-skewed.
#Right-skewed; most deliveries 30–50 mins, few above 60.
#Delivery times cluster 30–50 mins, with a right skew.
#Moderate right skew; most under 50 mins, some delays.

freq_table <- hist(delivery_data$Delivery_Time,
                   breaks = breaks,
                   right = FALSE,
                   plot = FALSE)
# Cumulative frequency
cum_freq <- cumsum(freq_table$counts)

# Midpoints for plotting
midpoints <- freq_table$breaks[-1]

# Plot ogive
plot(midpoints, cum_freq,
     type = "o",
     col = "blue",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")


