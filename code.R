'''
Code for producing a heat map of rSDT infectoin rates among women in the U.S. 
Authors: Devyn Escalanti
University of Central Florida 
Email: dtescalanti@gmail.com
'''

df<-read.csv("IHME-GBD_2019_DATA-c2c92f96-1.csv") $uploading data file 

fem <- subset(df, sex == "Female") #subsetting data frame by females #subsetting data by sex

#heat map of STD infection among women in U.S. 
ggplot(fem, aes(x = year, y = location, fill = val)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "cornsilk", high = "hotpink") +
  guides(fill = guide_legend(title = "Rate of STIs per 100k")) +
  theme_minimal() +
  scale_x_continuous(guide = guide_axis(angle = 90)) +
  theme(text = element_text(family = "Times New Roman", size = 11)) +  labs(
    title = "Sexually transmitted infections excluding HIV: Females",
    y = "U.S. States",
    x = "Year",
    caption = "Data source: Institute of Health Metrics and Evaluation"
  )
