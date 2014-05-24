library(ggplot2)

# Read emissions data
emissions <- readRDS("summarySCC_PM25.rds")
baltimore_emissions = emissions[emissions$fips == "24510",]

# Calculate total emission
total <- tapply(baltimore_emissions$Emissions, baltimore_emissions$year, sum)

# Create a barplot
g <- ggplot(total)

# Save the plot to file
dev.copy(png, file="plot3.png")
dev.off()
