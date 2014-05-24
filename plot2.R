# Read emissions data
emissions <- readRDS("summarySCC_PM25.rds")
baltimore_emissions = emissions[emissions$fips == "24510",]

# Calculate total emission
total <- tapply(baltimore_emissions$Emissions, baltimore_emissions$year, sum)

# Create a barplot
barplot(total, xlab="Year", ylab="Total emission", main="Total emission in Baltimore City for each year")

# Save the plot to file
dev.copy(png, file="plot2.png")
dev.off()
