
# configure workspace
source("config/config.R")

#########################
### 1. Rename a file  ###
#########################

# define the file working directory: "munge"
# (NOTE: make sure include "/" on both end)
wd <- paste0(getwd(), "/munge/")

# define a file name 
file_old <- "02-CleanDatas.R"

# check if the file exists 
file.exists(here("munge", 
                 file_old))

# define a new file name 
file_new <- "03-CleanData.R"

# rename file 
file.rename(paste0(wd, file_old),
            paste0(wd, file_new))



#########################
### 2. Create a file  ###
#########################

# create a file 
# METHOD 1: 
file.create(here("munge", 
                 "02-ManageDir.R"))

# METHOD 2: 
file.create("munge/02-ManageDir.R")



#########################
### 3. Remove a file  ###
#########################

# MOETHOD 1
file.remove(here("munge", 
                 "03-test.R"))

# METHOD 2: 
file.remove("munge/03-test.R")



###########################
### 4. All File Mgmt    ###
###########################

#------------- 1. list files 
# (1) list files in current directory
# METHOD 1
list.files()

# METHOD 2
list.files(here())

# (2) list files in "munge" sub-directory 
list.files(here("munge"))

#------------- 2. check if a file exists 
# (1) check file exists in current directory 
file.exists("README.md")

# (2) check file exists in "munge" sub-directory 
file.exists(here("munge",
                 "01-ManageFiles.R"))

#------------- 3. create a file 
# create a file 
file.create(here("munge", 
                 "02-ManageDir.R"))

#------------- 4. download a file 
# define url 
file_url <- paste0("https://public.opendatasoft.com/explore/dataset/sustainable-energy-for-all/download/?format=csv&timezone=America/Los_Angeles&lang=en&use_labels_for_header=true&csv_separator=%3B")

# download data 
download.file(file_url,
              destfile = here(
                # file location
                "data", 
                # give name to the file
                "energy.csv"))

#------------- 5. rename a file 
# define the file working directory: "munge"
# (NOTE: make sure include "/" on both end)
wd <- paste0(getwd(), "/munge/")

# define old file name 
file_old <- "02-CleanDatas.R"

# define new file name 
file_new <- "03-CleanData.R"

# rename file 
file.rename(paste0(wd, file_old),
            paste0(wd, file_new))

#------------- 6. remove a file 
file.remove(here("here", 
                 "03-test.R"))



