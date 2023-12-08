# Create a line graph of revenue vs. year
library(ggplot2)
# Create a vector of years
years <- c(
  mean(1802,1830), 
  mean(1830,1860), 
  mean(1860,1880), 
  mean(1880,1900), 
  mean(1900,1910), 
  mean(1910-1920), 
  mean(1920,1930), 
  mean(1930,1940), 
  mean(1940,1950), 
  mean(1950,1960), 
  mean(1960,1970), 
  mean(1970,1980), 
  mean(1980,1990), 
  mean(1990, 2020)

  
)
# Create a vector of estimated revenue values corresponding to the years
# Create a vector of estimated company value values corresponding to the years
company_values <- c(
  10000,  # 1802-1830
  100000,  # 1830-1860
  500000,  # 1860-1880
  2000000,  # 1880-1900
  5000000,  # 1900-1910
  10000000,  # 1910-1920
  20000000,  # 1920-1930
  40000000,  # 1930-1940
  60000000,  # 1940-1950
  90000000,  # 1950-1960
  120000000,  # 1960-1970
  300000000,  # 1970-1980
  700000000,  # 1980-1990
  738100000  # 1990-2020
)
# Combine years and revenue values into a data frame
value_data <- data.frame(
  Year = years,
  Company_Value = company_values
)






ggplot(value_data[value_data$Year >= 1800, ], aes(x = Year, y = Company_Value/10000000)) +
  geom_line() +
  labs(
    title = "DuPont Company Value over Time (in Billion Dollars)",
    x = "Year",
    y = "Market Value"
  ) + # Add annotations for significant events
#annotate("text", x = 1865, y = 1000, label = "Civil War", size = 4) +
#annotate("text", x = 1910, y = 2000, label = "World War I", size = 4) +
#annotate("text", x = 1940, y = 10000, label = "World War II", size = 4) +
#annotate("text", x = 1970, y = 6000, label = "Acquisition of Conoco", size = 4) +
#annotate("text", x = 2000, y = 30000, label = "Dot-com Boom and Emerging Markets", size = 4) +
  scale_y_continuous(labels = scales::comma)


#Average DuPont Return
(  738100000 /10000)^(1/200) - 1

