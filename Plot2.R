NEI <- readRDS("summarySCC_PM25.rds")

Balt <- NEI[NEI$fips == "24510", ]
Balt_Emissions <- aggregate(Emissions ~ year, data=Balt, FUN=sum)

png("plot2.png", height=480, width=480)
barplot(height=Balt_Emissions$Emissions, names.arg=Balt_Emissions$year, main="Total PM25 Emmission By Year For Baltimore City", xlab="Year", ylab="PM25 Emmission Level")
dev.off()