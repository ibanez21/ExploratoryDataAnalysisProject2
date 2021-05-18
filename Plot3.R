NEI <- readRDS("summarySCC_PM25.rds")

balt <- NEI[NEI$fips == "24510", ]
balt_emmissions <- aggregate(Emissions ~ year + type, data=balt_emmissions, FUN=sum)

png("plot3.png")
g <- ggplot(balt_emmissions, aes(year, Emissions, color=type))
g <- g + geom_line() + ggtitle("Baltimore PM25 Emission Amounts By Type") + ylab("PM25 Emission")
print(g)
dev.off()

