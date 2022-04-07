
# configure workspace
source("config/config.R")


#------------- 1. list sub-directories 
#                 in current working directory
# METHOD 1
# define current working directory 
wd <- getwd()

# list working sub-directory names
list.dirs(wd, 
          # only show folder name, not full path
          full.names = F,
          # only show sub-directory 
          # [-1] removes main directory folder
          recursive = F)[-1]

# METHOD 2
# list working sub-directory names
list.dirs(getwd(), 
          full.names = F,
          recursive = F)[-1]

#------------- 2. check if a directory exists 
# check if a directory exists
dir.exists("munge")

#------------- 3. create a directory 
dir.create("a_test_dir")

#------------- 4. rename a directory 
# define current working directory: 
# (NOTE: make sure include "/")
wd <- paste0(getwd(), "/")

# define old directory name 
dir_old <- "a_test_dir"

# define new directory name 
dir_new <- "a_test"

# rename file 
file.rename(paste0(wd, dir_old),
            paste0(wd, dir_new))

#------------- 5. remove a directory 
# remove a directory
unlink("a_test",
       recursive = TRUE)

# check if "a_test" still exists
dir.exists('a_test')



