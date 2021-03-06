# ExploratoryDataAnalysisProject2

Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the EPA National Emissions Inventory web site.

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008.

# Questions

We are tasked with answering the 6 following questions and providing a plot to support our anwers

1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

---
___

From the plot, total PM25 emission levels have decreased year over year accross the country 

---
___

2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510"\color{red}{\verb|fips == "24510"|}fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

---
___

The overall trend from 1999 to 2008 decreased, but did not strictly decrease year over year.

---
___

3. Of the four types of sources indicated by the type\color{red}{\verb|type|}type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

---
___

All types except POINT decreased year over year

---
___

4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

---
___

Total coal emissions decreased over the time period

---
___

5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

---
___

Emission levels from motor vehicles in Baltimore decreased over the time period

---
___

6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"\color{red}{\verb|fips == "06037"|}fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

---
___

Baltimore emission levels decreased over the time period, whereas Los Angeles did not. Los Angeles also emitted a much larger amount of pollution, however this is expected as its population is much larger.
