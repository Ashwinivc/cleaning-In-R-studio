data ("airquality")
View(airquality)

#drop NA using library

library(tidyr)

clean <- drop_na(airquality)
 str(clean)
 
 #clean up data
 clean$month <- as.factor(clean$Month)
 str(clean)
 #binary classifier
 X <- mean(clean$Ozone)
 
 #create a variable "quality" where ozone greater than mean the quality is bad
 #otherwise its  good
 clean$quality <- as.factor(ifelse(clean$Ozone > X,"bad","good"))
 str(clean)
 
 #linear regression using "lm" model
 
 install.packages("dplyr")
 library(dplyr)
 install.packages("tidypredict")
 library(tidypredict)
  model <- lm(Ozone ~ Solar.R + Temp + Wind, data = clean)
  summary(model)
  