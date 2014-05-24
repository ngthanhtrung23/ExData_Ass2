# Read emissions data
emissions <- readRDS("summarySCC_PM25.rds")

# Calculate total emission
total <- tapply(emissions$Emissions, emissions$year, sum)

# Create a barplot
barplot(total, xlab="Year", ylab="Total emission", main="Total emission for each year")

# Save the plot to file
dev.copy(png, file="plot1.png")
dev.off()
