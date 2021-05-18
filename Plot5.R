library(dplyr)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Balt <- NEI[NEI$fips == "24510", ]
Vehicles <- dplyr::filter(SCC, grepl("Vehicles|vehicles",EI.Sector))
Vehicles_SCC <- Vehicles$SCC
NEI_Vehicles <- Balt[Balt$SCC %in% Vehicles_SCC,]
Vehicle_Emissions <- aggregate(Emissions ~ year, data=NEI_Vehicles, FUN=sum)

png("plot5.png")
barplot(height=Vehicle_Emissions$Emissions, names.arg=Vehicle_Emissions$year, main="Total PM25 Emmission From Vehicles in Baltimore", xlab="Year", ylab="PM25 Emmission Level")
dev.off()