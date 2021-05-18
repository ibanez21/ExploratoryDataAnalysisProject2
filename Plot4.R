library(dplyr)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Coal <- dplyr::filter(SCC, grepl("Coal",EI.Sector))
Coal_SCC <- Coal$SCC
NEI_Coal <- NEI[NEI$SCC %in% Coal_SCC,]
Coal_Emissions <- aggregate(Emissions ~ year, data=NEI_Coal, FUN=sum)

png("plot4.png")
barplot(height=Coal_Emissions$Emissions, names.arg=Coal_Emissions$year, main="Total PM25 Emmissions From Coal", xlab="Year", ylab="PM25 Emmission Level")
dev.off()
