
# configure workspace
source("config/config.R")

# load data  
mtcars <- fread("data/mtcars.csv")

# list variables 
ls(mtcars)

# head data 
data.table(head(mtcars, 3))

# convert to data.table
mtcars <- as.data.table(mtcars)

#------------- 1. order data by "mpg"
# order data 
mtcars_ordered <- setorder(mtcars, 
                   mpg)

# see data 
data.table(head(mtcars_ordered, 3))

# save ordered data 
fwrite(mtcars_ordered,
       "cache/mtcars_ordered.csv",
       row.names = F)

