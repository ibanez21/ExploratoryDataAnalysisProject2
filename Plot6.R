library(dplyr)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

balt <- NEI[NEI$fips == "24510", ]
vehicles <- dplyr::filter(SCC, grepl("Vehicles|vehicles",EI.Sector))
vehicles_SCC <- vehicles$SCC
balt_vehicles <- balt[balt$SCC %in% vehicles_SCC,]
balt_vehicle_emissions <- aggregate(Emissions ~ year, data=balt_vehicles, FUN=sum)

la <- NEI[NEI$fips == "06037", ]
vehicles <- dplyr::filter(SCC, grepl("Vehicles|vehicles",EI.Sector))
vehicles_SCC <- vehicles$SCC
la_vehicles <- la[la$SCC %in% vehicles_SCC,]
la_vehicle_emissions <- aggregate(Emissions ~ year, data=la_vehicles, FUN=sum)

merged_emissions <- merge(balt_vehicle_emissions,la_vehicle_emissions, by="year")
names(merged_emissions) <- c("Year","Baltimore_Emissions","LA_Emissions")

png("plot6.png")
par(mfrow=c(1,2), mar=c(2,2,2,1))
with(merged_emissions, {
    barplot(Baltimore_Emissions, names=Year, main="Baltimore PM25 Emission")
    barplot(LA_Emissions, names=Year, main="Los Angeles PM25 Emission")
})
dev.off()