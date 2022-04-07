
# configure workspace
source("config/config.R")

# load data 
mtcars <- fread("cache/mtcars_ordered.csv")

#----------- 1. linear regression 
# (1) linear model 1
lm_1 <- lm(mpg ~ am + 
             carb + 
             cyl + 
             gear, 
           data = mtcars)

# see coefficients
summary(lm_1)$coefficients

# (2) linear model 2
lm_2 <- lm(mpg ~ ., 
           data = mtcars)

# model summary
summary(lm_2)$coefficients

#----------- 2. save model results  
# (1) save as .txt
stargazer(
  lm_1, 
  lm_2,
  type = "text", 
  out = "report/lm_results.txt",
  align = T,
  digits = 3, 
  title = "Linear Models Results", 
  dep.var.labels = c("Miles per Gallon"), 
  column.labels = c("OLS 1","OLS 2"), 
  covariate.labels = c(
    "Transmission", 
    "Number of Carburetors",
    "Number of Cylinders",
    "Displacement",
    "Gross Horsepower",
    "Rear-Axle Ratio",
    "Weight (1000 lbs)",
    "1/4 mile time",
    "Engine",
    "Number of Forward Gears",
    "Constant"),
  no.space = TRUE
)

# (2) save as .tex
stargazer(
  lm_1, 
  lm_2,
  type = "latex", 
  out = "report/lm_results.tex",
  align = T,
  digits = 3, 
  title = "Linear Models Results", 
  dep.var.labels = c("Miles per Gallon"), 
  column.labels = c("OLS 1","OLS 2"), 
  covariate.labels = c(
    "Transmission", 
    "Number of Carburetors",
    "Number of Cylinders",
    "Displacement",
    "Gross Horsepower",
    "Rear-Axle Ratio",
    "Weight (1000 lbs)",
    "1/4 mile time",
    "Engine",
    "Number of Forward Gears",
    "Constant"),
  no.space = TRUE
)






