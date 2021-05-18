NEI <- readRDS("summarySCC_PM25.rds")

total_emmissions <- aggregate(Emissions ~ year, data=NEI, FUN=sum)

png("plot1.png", height=480, width=480)
barplot(height=total_emmissions$Emissions, names.arg=total_emmissions$year, main="Total PM25 Emmission By Year", xlab="Year", ylab="PM25 Emmission Level")
dev.off()