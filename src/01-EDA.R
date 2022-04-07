
# configure workspace
source("config/config.R")

# load data
mtcars <- fread("cache/mtcars_ordered.csv")

# see head data 
data.table(head(mtcars, 3))


#------------- 1. data summary statistics
# (1) save as .tex
# (can be directly used in latex)
stargazer(mtcars,
          type = "latex", 
          title = "Data Summary Statistics", 
          digits = 3, 
          out = "report/data_summary.tex")

# (2) save as .txt
# (reasier to read)
stargazer(mtcars,
          type = "text", 
          title = "Data Summary Statistics", 
          digits = 3, 
          out = "report/data_summary.txt")

#------------- 2. plot histogram for "mpg"
# (1) plot graph 
mpg_hist <- ggplot(mtcars, 
                   aes(mpg)) + 
  geom_histogram(binwidth = 1, 
                 aes(y=..density..), 
                 colour = "black", 
                 fill = "white") + 
  geom_density(alpha = .2, 
               fill = "#FF6666") + 
  xlab("Miles per Gallon") + 
  ylab("Density") + 
  ggtitle("Histogram for Variable 'mpg'")

# see graph 
mpg_hist

# (2) save graph 
ggsave(file.path("graph", 
                 "mpg_hist.png"))

#------------- 3. More data summary statistics
# (1) select vars and get summary 
stargazer(
  # subset data here
  # select vars
  mtcars[, c("mpg", "disp", "hp",
           "drat", "wt", "qsec")],
  out = "report/data_cont_summary.txt",
  type = "text",
  # var name on top
  flip = T,
  digits = 2, 
  align = T,
  title = "Summary Statistics for Continuous Variables"
)

# (2) subset data by condition and get summary 
stargazer(
  # subset data here
  # select vars
  subset(mtcars[, c("mpg", "disp", "hp",
             "drat", "wt", "qsec")], 
         # for gear = 3
         mtcars$gear == 3),
  out = "report/data_gear3_summary.txt",
  type = "text",
  # var name on top
  flip = T,
  digits = 2, 
  align = T,
  title = "Summary Statistics for 3-Gear Cars Only"
)








